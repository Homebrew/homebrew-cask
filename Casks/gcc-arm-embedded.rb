cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  version "10.3-2021.10"
  sha256 "e3888a1d0af798be7f98d67a3e6dc4fc96d92d5b57fc635e0c021a4a36087b5d"

  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/#{version}/gcc-arm-none-eabi-#{version}-mac.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 32-bit Arm processors"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads"
    regex(/href=.*?gcc-arm-none-eabi-(\d+\.\d+-\d+\.\d+)-mac.pkg/i)
  end

  pkg "gcc-arm-none-eabi-#{version}-mac.pkg"
  binary "#{appdir}/ARM/bin/arm-none-eabi-addr2line"
  binary "#{appdir}/ARM/bin/arm-none-eabi-ar"
  binary "#{appdir}/ARM/bin/arm-none-eabi-as"
  binary "#{appdir}/ARM/bin/arm-none-eabi-c++"
  binary "#{appdir}/ARM/bin/arm-none-eabi-c++filt"
  binary "#{appdir}/ARM/bin/arm-none-eabi-cpp"
  binary "#{appdir}/ARM/bin/arm-none-eabi-elfedit"
  binary "#{appdir}/ARM/bin/arm-none-eabi-g++"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-10.3.1"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-ar"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-nm"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-ranlib"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov-dump"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov-tool"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb-add-index"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb-add-index-py"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb-py"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gprof"
  binary "#{appdir}/ARM/bin/arm-none-eabi-ld"
  binary "#{appdir}/ARM/bin/arm-none-eabi-ld.bfd"
  binary "#{appdir}/ARM/bin/arm-none-eabi-lto-dump"
  binary "#{appdir}/ARM/bin/arm-none-eabi-nm"
  binary "#{appdir}/ARM/bin/arm-none-eabi-objcopy"
  binary "#{appdir}/ARM/bin/arm-none-eabi-objdump"
  binary "#{appdir}/ARM/bin/arm-none-eabi-ranlib"
  binary "#{appdir}/ARM/bin/arm-none-eabi-readelf"
  binary "#{appdir}/ARM/bin/arm-none-eabi-size"
  binary "#{appdir}/ARM/bin/arm-none-eabi-strings"
  binary "#{appdir}/ARM/bin/arm-none-eabi-strip"

  uninstall pkgutil: "gcc.arm-none-eabi-#{version[/^(\d{2})/]}",
            delete:  "/Applications/ARM"
end
