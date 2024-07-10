cask "gcc-aarch64-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  version "13.3.rel1"
  pkg_version = "13.3.rel1"
  gcc_version = "13.3.1"
  sha256 arm:   "e8d1b044546df16d4f654d72eafe2f68950d39838078d6f32f132de0d6649eee",
         intel: "2a3e1c4364f401cb206bc95b2fd0c3e58f3dc539db3c4e4b0ecdfcba8267d6a2"

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/arm-gnu-toolchain-#{version}-darwin-#{arch}-aarch64-none-elf.pkg"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 64-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

  livecheck do
    url "https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads"
    regex(/href=.*?arm-gnu-toolchain-(\d+\.\d+\.\w+)-darwin-(?:\w+)-aarch64-none-elf.pkg/i)
  end

  pkg "arm-gnu-toolchain-#{version}-darwin-#{arch}-aarch64-none-elf.pkg"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-addr2line"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ar"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-as"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-c++"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-c++filt"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-cpp"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-elfedit"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-g++"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-#{gcc_version}"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ar"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-nm"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcc-ranlib"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov-dump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gcov-tool"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gdb"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gdb-add-index"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gfortran"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-gprof"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ld"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ld.bfd"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-lto-dump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-nm"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-objcopy"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-objdump"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-ranlib"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-readelf"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-size"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-strings"
  binary "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf/bin/aarch64-none-elf-strip"

  uninstall pkgutil: "arm-gnu-toolchain-#{pkg_version}-darwin-#{arch}-aarch64-none-elf",
            delete:  "/Applications/ArmGNUToolchain/#{pkg_version}/aarch64-none-elf",
            rmdir:   [
              "/Applications/ArmGNUToolchain",
              "/Applications/ArmGNUToolchain/#{pkg_version}",
            ]

  # No zap stanza required
end
