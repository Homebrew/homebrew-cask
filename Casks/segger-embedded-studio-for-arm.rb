cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "7.12"
  sha256 arm:   "04642ac603f4b4b62a7313eb0b0ba1737ada4723a0f939201c562ef3df5e2fd8",
         intel: "e0b5a48745eed50fc40757e3b661011a8b89fbe1a7a5c30dddf64fe03134da3f"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  name "SEGGER Embedded Studio for ARM"
  desc "IDE for embedded systems"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  livecheck do
    url "https://studio.segger.com/arm_segger_studio_release_notes.htm"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: [
    "arm_segger_studio",
    "com.segger.studio.arm_segger_studio.#{version}",
    "com.segger.studio.arm_segger_studio.le.#{version}",
    "com.segger.studio.arm_segger_studio.libcxx.#{version}",
  ]

  zap trash: [
    "/Applications/SEGGER Embedded Studio for ARM*",
  ]
end
