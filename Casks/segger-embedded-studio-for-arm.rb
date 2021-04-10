cask "segger-embedded-studio-for-arm" do
  version "5.42a"
  sha256 "7f960f0c0d30c1796f02f313e49989af1b68ba21bb9e99e1de6731b1308f249a"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  name "SEGGER Embedded Studio for ARM"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  livecheck do
    url "https://studio.segger.com/arm_segger_studio_release_notes.htm"
    strategy :page_match
    regex(%r{href=.*?/Setup_EmbeddedStudio_ARM_v(\d+(?:\.\d+)*)_macos_x64\.dmg}i)
  end

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
