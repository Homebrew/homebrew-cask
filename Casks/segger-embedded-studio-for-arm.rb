cask "segger-embedded-studio-for-arm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "6.30"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "9ade323f0a4a998aa365934f7b9add917f8b8bafe917e33aca8a822e77e0724d"
  else
    sha256 "682d794dd3344b17f9ecdcab7905e9021f98177435a1b850ec55d7072901c79f"
  end

  name "SEGGER Embedded Studio for ARM"
  desc "IDE for embedded systems"
  homepage "https://www.segger.com/products/development-tools/embedded-studio"

  livecheck do
    url "https://studio.segger.com/arm_segger_studio_release_notes.htm"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  pkg "Install SEGGER Embedded Studio for ARM #{version}.pkg"

  uninstall pkgutil: [
    "arm_segger_studio",
    "com.segger.studio.arm_segger_studio.#{version}",
    "com.segger.studio.arm_segger_studio.le.#{version}",
    "com.segger.studio.arm_segger_studio.libcxx.#{version}",
  ]
end
