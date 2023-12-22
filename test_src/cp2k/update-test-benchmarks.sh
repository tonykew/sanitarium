#/bin/sh
#
# Updated CP2K benchmarks
#
module load gcc openmpi cp2k
wget https://github.com/cp2k/cp2k/releases/download/v${EBVERSIONCP2K}/cp2k-${EBVERSIONCP2K}.tar.bz2
bzip2 -dc cp2k-${EBVERSIONCP2K}.tar.bz2 | tar -xv --strip-components=1 -f - $(bzip2 -dc cp2k-${EBVERSIONCP2K}.tar.bz2 | tar tvf - | egrep '/(fayalite|H2O-64|H2O-dft-ls).inp$' | awk '{print $NF}')
rm cp2k-${EBVERSIONCP2K}.tar.bz2
module unload cp2k openmpi gcc
