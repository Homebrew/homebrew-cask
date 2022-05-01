cask "freecol" do
  version "0.12.0"
  sha256 "6c4a7c09d9736023e7aa5065609404612545b0d15552fc7850fd77ebefa35bf5"

  url "https://downloads.sourceforge.net/freecol/freecol-#{version}-mac.tar.bz2",
      verified: "sourceforge.net/freecol/"
  name "FreeCol"
  desc "Turn-based strategy game"
  homepage "http://www.freecol.org/"

  app "FreeCol.app"
end
