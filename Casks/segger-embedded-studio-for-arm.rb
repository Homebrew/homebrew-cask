cask "segger-embedded-studio-for-arm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "6.32b"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "688b8547a85c223601b0722ca8834c13ffab67413831ea6c266fd48457e323ad"
  else
    sha256 "727800ba3d3d25ed3225d9d4c234c4e2c89566a0818aa432591723bf70a78bf4"
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
