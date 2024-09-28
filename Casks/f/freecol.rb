cask "freecol" do
  arch intel: "-intel"

  version "1.2.0"
  sha256 arm:   "3bf9b810ef9288440620090869b0778c52d91c234f92d728d3c8b138e38676ac",
         intel: "2f330f6a0b884374fa9ef8308547dccb3ebfb2d4199ee89321daabeb1fdc7a7b"

  url "https://downloads.sourceforge.net/freecol/FreeCol#{arch}-#{version}.dmg",
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
