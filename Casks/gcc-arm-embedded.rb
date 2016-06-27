cask 'gcc-arm-embedded' do
  version '5_3-2016q1,20160330'
  sha256 '480843ca1ce2d3602307f760872580e999acea0e34ec3d6f8b6ad02d3db409cf'

  url "https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q1-update/+download/gcc-arm-none-eabi-#{version.before_comma}-#{version.after_comma}-mac.tar.bz2"
  name 'GCC ARM Embedded'
  homepage 'https://launchpad.net/gcc-arm-embedded'
  license :gpl

  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-addr2line"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ar"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-as"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-c++"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-c++filt"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-cpp"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-elfedit"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-g++"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-ar"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-nm"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcc-ranlib"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcov"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gcov-tool"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gdb"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gdb-py"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-gprof"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ld"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ld.bfd"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-nm"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-objcopy"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-objdump"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-ranlib"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-readelf"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-size"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-strings"
  binary "gcc-arm-none-eabi-#{version.before_comma}/bin/arm-none-eabi-strip"
end
