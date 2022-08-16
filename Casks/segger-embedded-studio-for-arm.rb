cask "segger-embedded-studio-for-arm" do
  arch arm: "arm64", intel: "x64"

  version "6.34"

  url "https://www.segger.com/downloads/embedded-studio/Setup_EmbeddedStudio_ARM_v#{version.no_dots}_macos_#{arch}.dmg"
  on_intel do
    sha256 "4c0b2ed14f46c5df4f560b1f8d0411d4070cd965cbe02801f55c7f93686c574e"
  end
  on_arm do
    sha256 "4a5ab3761dca0c75cfe902253a5c93ce8b1b32161b386593319a812cf7efacff"
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
