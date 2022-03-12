cask "gcc-aarch64-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  version "11.2-2022.02"
  gcc_version = "11.2.1"
  sha256 "172f70df0146a0ba6bc08971edcacdd786ffb6ec5142bb9041cabaef91984d4f"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/gcc-arm-#{version}-darwin-x86_64-aarch64-none-elf.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 64-bit Arm processors"
  homepage "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads"
    regex(/href=.*?gcc-arm-(\d+\.\d+-\d+\.\d+)-darwin-(?:\w+)-aarch64-none-elf.pkg/i)
  end

  pkg "gcc-arm-#{version}-darwin-x86_64-aarch64-none-elf.pkg"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-addr2line"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-ar"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-as"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-c++"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-c++filt"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-cpp"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-elfedit"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-g++"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcc"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcc-#{gcc_version}"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcc-ar"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcc-nm"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcc-ranlib"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcov"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcov-dump"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gcov-tool"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gdb"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gdb-add-index"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gfortran"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-gprof"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-ld"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-ld.bfd"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-lto-dump"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-nm"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-objcopy"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-objdump"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-ranlib"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-readelf"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-size"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-strings"
  binary "#{appdir}/ARM/bin/aarch64-none-elf-strip"

  uninstall pkgutil: "gcc-arm-#{version}-darwin-x86_64-aarch64-none-elf",
            delete:  [
              "/Applications/ARM/#{version}-darwin-x86_64-aarch64-none-elf-manifest",
              "/Applications/ARM/bin/aarch64-none-elf-*",
              "/Applications/ARM/aarch64-none-elf",
              "/Applications/ARM/lib/gcc/aarch64-none-elf",
              "/Applications/ARM/libexec/gcc/aarch64-none-elf",
              "/Applications/ARM/share/doc/aarch64-none-elf",
              "/Applications/ARM/share/man/man1/aarch64-none-elf-*.1",
              "/Applications/ARM/share/man/man5/aarch64-none-elf-gdbinit.5",
            ]

  zap trash: "/Applications/ARM"
end
