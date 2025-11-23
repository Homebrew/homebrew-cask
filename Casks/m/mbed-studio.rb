cask "mbed-studio" do
  version "1.5.0"
  sha256 :no_check

  url "https://studio.mbed.com/installers/latest/mac/MbedStudio.pkg"
  name "Mbed Studio"
  desc "IDE for Mbed OS application and library development"
  homepage "https://os.mbed.com/studio/"

  livecheck do
    url :url
    strategy :header_match
  end

  rename "MbedStudio-*.pkg", "MbedStudio.pkg"

  pkg "MbedStudio.pkg"

  uninstall pkgutil: "com.arm.mbed.studio"

  zap trash: [
    "~/.mbed-library-cache",
    "~/.mbed-library-pipeline",
    "~/.mbed-studio",
    "~/Library/Application Support/Mbed Studio",
  ]
end
