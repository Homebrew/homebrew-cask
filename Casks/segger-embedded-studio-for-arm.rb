cask "segger-embedded-studio-for-arm" do
  version "5.10"
  sha256 "a72d3a0932556e6a82f2a57def899044b94aa5b2c429bc8654e3427e794649b4"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  appcast "https://studio.segger.com/arm_segger_studio_release_notes.htm"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
