cask "gpxsee" do
  version "8.4"
  sha256 "f48dbb5d6482cc78a646f6f1cfbae770ee8819d47df0873bcef39ab36c05343a"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
