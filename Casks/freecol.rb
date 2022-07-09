cask "freecol" do
  version "0.13.0"
  sha256 "7961908ca34c05de2bb92291517789e6b68578014dea44316609809afd46ca84"

  url "https://downloads.sourceforge.net/freecol/freecol-#{version}.dmg",
      verified: "sourceforge.net/freecol/"
  name "FreeCol"
  desc "Turn-based strategy game"
  homepage "http://www.freecol.org/"

  app "FreeCol.app"
end
