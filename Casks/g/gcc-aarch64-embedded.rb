cask "gcc-aarch64-embedded" do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  arch arm: "arm64", intel: "x86_64"

  pkg_version = nil
  gcc_version = nil
  on_arm do
    version "14.3.rel1"
    sha256 "82a4987c670f589d3c5b97bc579561365116670ff3c1c67a07fc29fa23aef3b2"
    pkg_version = "14.3.rel1"
    gcc_version = "14.3.1"
    livecheck do
      url "https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads"
      regex(/href=.*?arm-gnu-toolchain-(\d+\.\d+\.\w+)-darwin-(?:\w+)-aarch64-none-elf\.pkg/i)
    end
  end
  on_intel do
    version "14.2.rel1"
    sha256 "4e0da7bc82d316deb7f385d249bf7f87ce06d31b9d6f8b63f9b981a2203cf2ce"
    pkg_version = "14.2.rel1"
    gcc_version = "14.2.1"
    livecheck do
      skip "Legacy version"
    end
  end

  url "https://developer.arm.com/-/media/Files/downloads/gnu/#{version}/binrel/arm-gnu-toolchain-#{version}-darwin-#{arch}-aarch64-none-elf.pkg",
      user_agent: "curl/8.7.1"
  name "GCC ARM Embedded"
  desc "Pre-built GNU bare-metal toolchain for 64-bit Arm processors"
  homepage "https://developer.arm.com/Tools%20and%20Software/GNU%20Toolchain"

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
