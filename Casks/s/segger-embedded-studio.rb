cask "segger-embedded-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "8.28"
  sha256 arm:   "1936329938c97ae85439fe5ddc73019b97bd38a05f4267f2e18e13f5f43a2ba7",
         intel: "47d7963961a1f0e0c0d26d249d916abeb1ca8a94caf8ba2bb5be271d6b088126"

  url "https://www.segger.com/fd/embedded-studio/Setup_EmbeddedStudio_v#{version.no_dots}_macOS_#{arch}.dmg"
  name "SEGGER Embedded Studio for Arm and RISC-V"
  desc "IDE for embedded systems"
  homepage "https://www.segger.com/products/development-tools/embedded-studio/"

  livecheck do
    url "https://studio.segger.com/segger_studio_release_notes.htm"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  depends_on :macos

  pkg "Install SEGGER Embedded Studio #{version}.pkg"

  uninstall pkgutil: [
    "com.segger.studio.segger_studio.#{version}",
    "com.segger.studio.segger_studio.cruntime.source.#{version}",
    "com.segger.studio.segger_studio.gcc.arm.#{version}",
    "com.segger.studio.segger_studio.gcc.riscv.#{version}",
    "com.segger.studio.segger_studio.libcxx.source.#{version}",
    "com.segger.studio.segger_studio.segger.toolchain.#{version}",
  ]

  zap trash: "/Applications/SEGGER/SEGGER Embedded Studio*"

  caveats do
    license @cask.url.to_s
  end
end
