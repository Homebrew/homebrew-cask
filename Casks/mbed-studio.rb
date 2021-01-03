cask "mbed-studio" do
  version "1.3.1.3"
  sha256 "cc4561b6ce367ed9fa330dcc3a88469a662c90c9be43b6e6dbecd430cf0bfea2"

  url "https://studio.mbed.com/installers/latest/mac/MbedStudio.pkg"
  name "Mbed Studio"
  homepage "https://os.mbed.com/studio/"

  pkg "MbedStudio-#{version.major_minor_patch}.pkg"

  uninstall pkgutil: "com.arm.mbed.studio"

  zap trash: [
    "~/Library/Application Support/Mbed Studio",
    "~/.mbed-library-cache",
    "~/.mbed-library-pipeline",
    "~/.mbed-studio",
  ]
end
