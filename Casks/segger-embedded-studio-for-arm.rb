cask "segger-embedded-studio-for-arm" do
  version "5.60"

  if Hardware::CPU.intel?
    sha256 "4b2303451de2703f40c604f20e24808fdf35464bcf5775c47f460d8cba56ce3d"

    url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  else
    sha256 "c38bd15a8f57899e032bb5ae16be84ff5208242b82ade71313187680985ac1f9"

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
