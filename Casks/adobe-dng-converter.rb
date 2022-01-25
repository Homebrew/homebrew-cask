cask "adobe-dng-converter" do
  version "14.1"
  sha256 "7f0a20b5f2ee27965c6eafd4a79339bb13b306fbda4dc19657237bd3fedefd27"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNG_Converter_#{version.dots_to_underscores}.dmg"
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
