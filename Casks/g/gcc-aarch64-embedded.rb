cask "gcc-aarch64-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  version "13.2.rel1"
  pkg_version = "13.2.Rel1"
  gcc_version = "13.2.1"
  sha256 arm:   "88e51daf993dfc93d7ced3908b81f077ea18a89784ce5f398cdcd2ac6197435b",
         intel: "bbf320eb0a9115ba0f6a7de936805dfc6e19f767ed290032014a67443af87c20"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/arm-gnu-toolchain-#{version}-darwin-#{arch}-aarch64-none-elf.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 64-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

  livecheck do
    url "https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads"
    regex(/href=.*?arm-gnu-toolchain-(\d+\.\d+\.\w+)-darwin-(?:\w+)-aarch64-none-elf.pkg/i)
  end

  pkg "arm-gnu-toolchain-#{version}-darwin-#{arch}-aarch64-none-elf.pkg"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-addr2line"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ar"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-as"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-c++"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-c++filt"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-cpp"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-elfedit"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-g++"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-#{gcc_version}"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ar"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-nm"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov-dump"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov-tool"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gdb"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gdb-add-index"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gfortran"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gprof"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ld"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ld.bfd"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-lto-dump"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-nm"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-objcopy"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-objdump"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ranlib"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-readelf"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-size"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-strings"
  binary "#{appdir}/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-strip"

  uninstall pkgutil: "arm-gnu-toolchain-#{pkg_version}-darwin-#{arch}-aarch64-none-elf",
            delete:  "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf",
            rmdir:   [
              "/Applications/ArmGNUToolchain/#{pkg_version}",
              "/Applications/ArmGNUToolchain",
            ]

  # No zap stanza required
end
