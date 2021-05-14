cask "segger-embedded-studio-for-arm" do
  version "5.44"

  if Hardware::CPU.intel?
    sha256 "ad326ba338ef46863ca39c0a74d49a32336a3cb24fc464d51f6aeff9aed5fa8f"

    url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_x64.dmg"
  else
    sha256 "1d6f2a3ff284b151c56e03d02cfa97a2e2ba534f5fa5b2768116f9e12eda03d1"

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
