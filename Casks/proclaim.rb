cask "proclaim" do
  version "3.1.0.0066,311.0.66"
  sha256 "99745a201342291c94cb29c74f7358e5ae4cb2fbfef0ce5ca93cfa01f12dc174"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version.before_comma}/Proclaim.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Faithlife Proclaim"
  desc "Church presentation software"
  homepage "https://proclaim.faithlife.com/"

  livecheck do
    url "http://downloads.proclaimonline.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
