cask "font-charter" do
  version "210112"
  sha256 "b40297f1a615f94594bdad0995848eb2223fb53ccb4ea197cabf24439bd811c9"

  url "https://practicaltypography.com/fonts/Charter%20#{version}.zip"
  name "Charter"
  homepage "https://practicaltypography.com/charter.html"

  livecheck do
    url :homepage
    regex(/href=.*?Charter[\s._-]?v?(\d+(?:\.\d+)*)\.zip/i)
  end

  font "Charter #{version}/OTF format (best for Mac OS)/Charter/Charter Bold Italic.otf"
  font "Charter #{version}/OTF format (best for Mac OS)/Charter/Charter Bold.otf"
  font "Charter #{version}/OTF format (best for Mac OS)/Charter/Charter Italic.otf"
  font "Charter #{version}/OTF format (best for Mac OS)/Charter/Charter Regular.otf"

  # No zap stanza required
end
