cask "segger-embedded-studio-for-arm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "6.32"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "3b2fb9b2711d08ae0eb4f741ceecb7395635eaef6fc43f2862944be8325f0676"
  else
    sha256 "e63d2797ac567da12fc631743ff42e673dfe12c0420ddd31eeeb87cd3307aa29"
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
