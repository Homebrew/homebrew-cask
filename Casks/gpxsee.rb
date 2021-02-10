cask "gpxsee" do
  version "8.5"
  sha256 "d6f8425b20e4939bdb6d78d804cdddf35e1f0d30605cbfa998add96994de72d3"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  appcast "https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
