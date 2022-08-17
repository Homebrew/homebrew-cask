cask "adobe-dng-converter" do
  version "14.5"
  sha256 "f6b02e1244e36e1456d1c0b3bc1d4819ed00ba087e2496a01df8bcf96a2948a3"

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
