#!/usr/bin/env bash
set -e
LIB="oak-cruiser.a"
TAG="calm-garden-calm-canyon"
REPO="wodeshijibz/sharedspirelab"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
