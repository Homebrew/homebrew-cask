cask "adobe-dng-converter" do
  version "13.3"
  sha256 "af03355011a69269c80e08a9094d64f0833f1572f8bb10f9a5f27b65818fa86f"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/photoshop/using/adobe-dng-converter.html"

  livecheck do
    url "https://helpx.adobe.com/in/photoshop/kb/uptodate.html"
    regex(%r{The current version of Adobe DNG Converter is <b>(\d+(?:\.\d+)*)</b>}i)
  end

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]
end
