cask "llvm-arm-embedded" do
  version "16.0.0"
  sha256 "ad743e1a217f52c7d588be29ea0835d0a98a92c462bb9488c51fb566be0a3a1e"

  url "https://github.com/ARM-software/LLVM-embedded-toolchain-for-Arm/releases/download/release-#{version}/LLVMEmbeddedToolchainForArm-#{version}-Darwin.tar.gz"
  name "llvm-arm-embedded"
  desc "Prebuilt LLVM toolchain for 32-bit Arm embedded targets"
  homepage "https://github.com/ARM-software/LLVM-embedded-toolchain-for-Arm"

  suite "LLVMEmbeddedToolchainForArm-#{version}-Darwin"
end
