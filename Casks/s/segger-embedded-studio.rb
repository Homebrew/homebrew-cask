cask "segger-embedded-studio" do
  arch arm: "arm64", intel: "x86_64"

  version "8.30"
  sha256 arm:   "70570ba4b3e4c5c99383572af2fa5280d5d7d8c49c08b3f9e6cc1c01a1c599bf",
         intel: "5cb0e47e9e07c2d065d85a30e7e67990e7d5c6fe0956aad161a3752bf244bf4b"

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
