cask "proclaim" do
  version "3.1.0.0063,311.0.63"
  sha256 "3446d04423342d8baf01ef7bed867907b81267df18858e4f580be65299256493"

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
