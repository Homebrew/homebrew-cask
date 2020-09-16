cask "mbed-studio" do
  version :latest
  sha256 :no_check

  url "https://studio.mbed.com/installers/latest/mac/MbedStudio.pkg"
  name "Mbed Studio"
  homepage "https://os.mbed.com/studio/"

  pkg "MbedStudio.pkg"

  uninstall pkgutil: "com.arm.mbed.studio"

  zap trash: [
    "~/Library/Application Support/Mbed Studio",
    "~/.mbed-library-cache",
    "~/.mbed-library-pipeline",
    "~/.mbed-studio",
  ]
end
