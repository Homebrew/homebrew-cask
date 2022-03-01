cask "gcc-arm-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  version "11.2-2022.02"
  gcc_version = "11.2.1"
  sha256 "105ac7f9b2be62c55d6853a099a92488c16f08bb296a694ef8430e5ddf8dead8"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/gcc-arm-#{version}-darwin-x86_64-arm-none-eabi.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 32-bit Arm processors"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads"
    regex(/href=.*?gcc-arm-(\d+\.\d+-\d+\.\d+)-darwin-(?:\w+)-arm-none-eabi.pkg/i)
  end

  depends_on arch: :x86_64

  pkg "gcc-arm-#{version}-darwin-x86_64-arm-none-eabi.pkg"
  binary "#{appdir}/ARM/bin/arm-none-eabi-addr2line"
  binary "#{appdir}/ARM/bin/arm-none-eabi-ar"
  binary "#{appdir}/ARM/bin/arm-none-eabi-as"
  binary "#{appdir}/ARM/bin/arm-none-eabi-c++"
  binary "#{appdir}/ARM/bin/arm-none-eabi-c++filt"
  binary "#{appdir}/ARM/bin/arm-none-eabi-cpp"
  binary "#{appdir}/ARM/bin/arm-none-eabi-elfedit"
  binary "#{appdir}/ARM/bin/arm-none-eabi-g++"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-#{gcc_version}"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-ar"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-nm"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcc-ranlib"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov-dump"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gcov-tool"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gdb-add-index"
  binary "#{appdir}/ARM/bin/arm-none-eabi-gfortran"
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

  uninstall pkgutil: "gcc-arm-#{version}-darwin-x86_64-arm-none-eabi",
            delete:  [
              "/Applications/ARM/#{version}-darwin-x86_64-arm-none-eabi-manifest",
              "/Applications/ARM/bin/arm-none-eabi-*",
              "/Applications/ARM/arm-none-eabi",
              "/Applications/ARM/lib/gcc/arm-none-eabi",
              "/Applications/ARM/libexec/gcc/arm-none-eabi",
              "/Applications/ARM/share/doc/arm-none-eabi",
              "/Applications/ARM/share/gcc-arm-none-eabi",
              "/Applications/ARM/share/man/man1/arm-none-eabi-*.1",
              "/Applications/ARM/share/man/man5/arm-none-eabi-gdbinit.5",
            ]

  zap delete: "/Application/ARM"
end
