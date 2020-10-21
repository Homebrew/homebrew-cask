cask "adobe-dng-converter" do
  version "13.0"
  sha256 "72c5692e94c4cd2f0f10d2c4ccc0c4dda82578f0fec1c67956458844f95fe78d"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  appcast "https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh"
  name "Adobe Camera Raw and DNG Converter"
  desc "DNG file converter"
  homepage "https://supportdownloads.adobe.com/product.jsp?product=106&platform=Macintosh"

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
    "com.adobe.CameraRawProfiles",
    "com.adobe.DNGConverter",
  ],
            quit:    "com.adobe.DNGConverter"
end
