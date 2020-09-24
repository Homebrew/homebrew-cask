cask "segger-embedded-studio-for-arm" do
  version "5.10b"
  sha256 "e97698121688dfa26d28fbf0109af272e492711dd6b2a44a634bd476442e449c"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast "https://studio.segger.com/arm_segger_studio_release_notes.htm"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
