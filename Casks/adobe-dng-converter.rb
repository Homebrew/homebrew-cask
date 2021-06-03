cask "adobe-dng-converter" do
  version "13.2"
  sha256 "8b634b7bccc4885883cb4781827daab3e5759d1f171f3ff9c2bbd82ebc98322a"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/photoshop/using/adobe-dng-converter.html"

  livecheck do
    url "https://helpx.adobe.com/in/photoshop/kb/uptodate.html"
    strategy :page_match
    regex(%r{The current version of Adobe DNG Converter is <b>(\d+(?:\.\d+)*)</b>}i)
  end

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]
end
