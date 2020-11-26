cask "segger-embedded-studio-for-arm" do
  version "5.30"
  sha256 "baeb17aa6ab5d60610986ff6c5e57d5e55256242d5e01998222784d0fc62c47d"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast "https://studio.segger.com/arm_segger_studio_release_notes.htm"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
