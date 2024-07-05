cask "freecol" do
  version "1.2.0"
  sha256 "3bf9b810ef9288440620090869b0778c52d91c234f92d728d3c8b138e38676ac"

  url "https://downloads.sourceforge.net/freecol/FreeCol-#{version}.dmg",
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
