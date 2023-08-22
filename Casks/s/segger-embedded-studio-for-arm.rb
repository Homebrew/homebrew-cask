cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "7.32"
  sha256 arm:   "174014200d31a6111e0e28b0fcb96ddad5c06e92fe9c4ecc951ba9ba682f8f5d",
         intel: "1ad1ac18d9c6c1ad77931d5a727f839d28604b66cdbe87f5502cba3d38fe1032"

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
