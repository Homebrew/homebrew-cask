cask "freecol" do
  version "1.1.0"
  sha256 "8cf26aa6c051835d1b0f7c35ce29bb2875d26096afaf9cd46ea00961b18c85e1"

  url "https://downloads.sourceforge.net/freecol/freecol-#{version}.dmg",
      verified: "sourceforge.net/freecol/"
  name "FreeCol"
  desc "Turn-based strategy game"
  homepage "https://www.freecol.org/"

  app "FreeCol.app"

  zap trash: [
    "~/Library/Application Support/freecol",
    "~/Library/Preferences/freecol",
  ]
end
