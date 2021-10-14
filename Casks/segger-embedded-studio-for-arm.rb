cask "segger-embedded-studio-for-arm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.62"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "c3fe8794a2a0031d2eeb1027d58e6aa76e50eda18d13e9e5f1a53b97e852c78a"
  else
    sha256 "34fe165ca59a08a849863649d3cc236871d39e845c29643ebfbffe273af8846c"
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
