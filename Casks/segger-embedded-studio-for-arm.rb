cask "segger-embedded-studio-for-arm" do
  version "5.10d"
  sha256 "2056da4bebf2471b7087287d919ffda01c34ae02c020577a8b0cc1d704315ed7"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast "https://studio.segger.com/arm_segger_studio_release_notes.htm"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
