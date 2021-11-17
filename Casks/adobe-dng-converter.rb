cask "adobe-dng-converter" do
  version "14.0"
  sha256 "200abde368a9eb70c766eff1ac567a401914c99c89b7200a246f3cbaa69fe994"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/photoshop/using/adobe-dng-converter.html"

  livecheck do
    url "https://helpx.adobe.com/in/photoshop/kb/uptodate.html"
    regex(%r{The current version of Adobe DNG Converter is <b>(\d+(?:\.\d+)+)</b>}i)
  end

  depends_on macos: ">= :mojave"

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]
end
