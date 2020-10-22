cask "segger-embedded-studio-for-arm" do
  version "5.20"
  sha256 "4a1e9b262eaa759cb69989508e0604eb8afc8f485f8f15af9ce886cba42bbbd0"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast "https://studio.segger.com/arm_segger_studio_release_notes.htm"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
