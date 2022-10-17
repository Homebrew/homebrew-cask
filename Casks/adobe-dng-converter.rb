cask "adobe-dng-converter" do
  version "15.0"
  sha256 "dc28ebd001afee5ce0b92fccb2c279f80ba8fb4baf7b0c2a0457fd668efcee16"

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
