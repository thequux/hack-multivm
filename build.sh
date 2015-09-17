#!/bin/bash

set -e -x

mvn package
mcs test.cs

cat test.exe target/multivm-1.0-SNAPSHOT.jar >result.exe
chmod +x result.exe
