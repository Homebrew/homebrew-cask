cask "adobe-dng-converter" do
  version "15.1.1"
  sha256 "66ac6122b30a16ca35badaf4941dad283c91f2efd1b63f530035c2d8dce56377"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html"

  livecheck do
    url "https://www.adobe.com/go/dng_converter_mac"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]
end
