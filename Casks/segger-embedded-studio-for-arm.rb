cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "6.40"
  sha256 arm:   "9a98bc0d5ab10fd6a2ce7dbd8c42781501a8fbe736159a9e722bef2ec3ec3bbe",
         intel: "eb649172fd0119b8d331afff89e2e7cd6036876fea5913ac6f04fcaf129c0fe4"

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
