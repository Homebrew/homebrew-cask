cask "adobe-dng-converter" do
  version "13.4"
  sha256 "3e2354cfb1e61b73985f76db6c3388988f97de4549f2c40056a0e54a28473f46"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/photoshop/using/adobe-dng-converter.html"

  livecheck do
    url "https://helpx.adobe.com/in/photoshop/kb/uptodate.html"
    regex(%r{The current version of Adobe DNG Converter is <b>(\d+(?:\.\d+)*)</b>}i)
  end

  depends_on macos: ">= :mojave"

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]
end
