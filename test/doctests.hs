module Main where

import Build_doctests (flags, pkgs, module_sources)
import Data.Foldable (traverse_)
import Test.DocTest (doctest)

main :: IO ()
main = do
    traverse_ putStrLn args -- optionally print arguments
    doctest $ ["--no-magic"] ++ args
  where
    args = flags ++ pkgs ++ module_sources
