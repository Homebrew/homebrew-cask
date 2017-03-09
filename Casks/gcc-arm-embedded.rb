cask 'gcc-arm-embedded' do
  version '6.2,2016q4'
  sha256 'cb52433610d0084ee85abcd1ac4879303acba0b6a4ecfe5a5113c09f0ee265f0'

  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/#{version.major}-#{version.after_comma}/gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}-20161216-mac.tar.bz2"
  name 'GCC ARM Embedded'
  homepage 'https://developer.arm.com/open-source/gnu-toolchain/gnu-rm'

  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-addr2line"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-ar"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-as"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-c++"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-c++filt"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-cpp"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-elfedit"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-g++"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcc"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcc-ar"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcc-nm"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcc-ranlib"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcov"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gcov-tool"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gdb"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gdb-py"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-gprof"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-ld"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-ld.bfd"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-nm"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-objcopy"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-objdump"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-ranlib"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-readelf"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-size"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-strings"
  binary "gcc-arm-none-eabi-#{version.major}_#{version.minor}-#{version.after_comma}/bin/arm-none-eabi-strip"
end
