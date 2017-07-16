#!/bin/sh

ROOT_TEX=mkom_seminar

rm -rf build
mkdir -p build/fig
mkdir -p out

cp -r fig build/
cp -r src/* build/

cd build
pdflatex $ROOT_TEX.tex
bibtex $ROOT_TEX.aux
pdflatex $ROOT_TEX.tex
pdflatex $ROOT_TEX.tex
cp $ROOT_TEX.pdf ../out/

cd ..
rm -rf build
