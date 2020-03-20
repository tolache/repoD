#!/bin/bash

VAR=%dep.BuildChain_BuildC.myParam%
echo "VAR is: $VAR"
echo "dep.param is: %dep.BuildChain_BuildC.myParam%"
if [[ $VAR -eq origValue ]]
then
  echo "Value has not changed."
  exit 1
elif [[ $VAR -eq newValue ]]
then
  echo "Value has changed successfully: %dep.BuildChain_BuildC.myParam%"
else
  echo "Unexpected value: %dep.BuildChain_BuildC.myParam%"
  exit 1
fi
