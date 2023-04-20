cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "7.12a"
  sha256 arm:   "fc321eea7fa6210e17dea5263d375fd1db9e60997b63790ca4bb664f0b5ca469",
         intel: "ae69ec75902b8405d4b76ee4dd542a6a3d2f96611dfe0fd3a7a9b8a17ebc557a"

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
