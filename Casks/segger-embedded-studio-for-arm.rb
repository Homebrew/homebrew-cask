cask "segger-embedded-studio-for-arm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.64"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "2b58c3225f2db6bc3dd386ddf979a8656f83812624269b013fea1b2acce1ded0"
  else
    sha256 "7e1cfd9ee8462e45411a7ff9af67f71c955f62b5bd6b959b29c03a1690409a7f"
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
