cask "gpxsee" do
  version "8.3"
  sha256 "bb074ed7c627a308b8edd60d17f2367eb19b9dfeb2cfb96498b54be5502b1c2c"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
