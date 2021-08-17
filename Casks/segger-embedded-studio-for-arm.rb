cask "segger-embedded-studio-for-arm" do
  version "5.50d"

  if Hardware::CPU.intel?
    sha256 "ea8435c0872a4129958029221ae165df448d6025d65d7187f693cd12d22fad40"

    url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  else
    sha256 "1e6038a8e7ffa0fd52e808540f0c33bc9fbdb3a1c5d243f186739c68548466a6"

    url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_arm64.dmg"
  end

  name "SEGGER Embedded Studio for ARM"
  desc "IDE for embedded systems"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  livecheck do
    url "https://studio.segger.com/arm_segger_studio_release_notes.htm"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)*[a-z]?)/i)
  end

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: "arm_segger_studio"
end
