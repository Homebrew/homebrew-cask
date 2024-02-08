cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "7.32a"
  sha256 arm:   "4f65bf658906c989387dc41fe51b09d60b8030e3f2513ab8b8268fa6d173a4d4",
         intel: "84ca915f2ea03e84d01ff43815a56151ca909c21982ae74e0c556785e7863ab6"

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

  zap trash: "/Applications/SEGGER Embedded Studio for ARM*"
end
