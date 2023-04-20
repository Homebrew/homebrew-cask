cask "freecol" do
  version "1.0.0"
  sha256 "0daf064d8d807b7ee2b3fa4492060085745eb835b821d763b761c26e2f7c3df2"

  url "https://downloads.sourceforge.net/freecol/freecol-#{version}.dmg",
      verified: "sourceforge.net/freecol/"
  name "FreeCol"
  desc "Turn-based strategy game"
  homepage "https://www.freecol.org/"

  app "FreeCol.app"
end
