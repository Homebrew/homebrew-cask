cask "segger-embedded-studio-for-arm" do
  version "5.42b"
  sha256 "56570f3251ed5bbec70fb5f9a02e590c5b9b6c25727f14c75118ee7e258df2d9"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  livecheck do
    url "https://studio.segger.com/arm_segger_studio_release_notes.htm"
    strategy :page_match
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)*[a-z]?)/i)
  end

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
