cask "mbed-studio" do
  version "1.5.0"
  sha256 "ffb62e8f641f35ca9935e34e81d2657d467e3c989f8441c99635fa5bc7798eac"

  url "https://github.com/ARMmbed/mbed-studio/releases/download/v#{version}/MbedStudio-#{version}.pkg"
  name "Mbed Studio"
  desc "IDE for Mbed OS application and library development"
  homepage "https://armmbed.github.io/mbed-studio/"

  deprecate! date: "2026-11-09", because: :discontinued

  depends_on :macos

  pkg "MbedStudio-#{version}.pkg"

  uninstall pkgutil: "com.arm.mbed.studio"

  zap trash: [
    "~/.mbed-library-cache",
    "~/.mbed-library-pipeline",
    "~/.mbed-studio",
    "~/Library/Application Support/Mbed Studio",
  ]
end
