cask "ondesoft-audiobook-converter" do
  version "7.0.6"
  sha256 :no_check

  url "https://www.ondesoft.com/download/odaudiobookconverter_mac.dmg"
  name "OndeSoft Audible Audiobook Converter"
  desc "Audiobook converter"
  homepage "https://www.ondesoft.com/audible-audiobook-converter.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Ondesoft AudioBook Converter.app"

  caveats do
    requires_rosetta
  end
end
