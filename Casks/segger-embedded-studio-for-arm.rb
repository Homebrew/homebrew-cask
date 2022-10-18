cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "6.34a"
  sha256 arm:   "857f27f8b83ba5325e7db1f6d919ea4224aab67bdf2df9870ce8d22f67320c40",
         intel: "62506f9e35efa318fe0e4fc59f91cfc156d7a107d6636021a64ae23480c04e2c"

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
end
