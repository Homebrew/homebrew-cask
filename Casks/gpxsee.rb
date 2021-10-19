cask "gpxsee" do
  version "9.9"
  sha256 "6658537d4159edb1bbaa9ca89368ad0e5136a58532343c0fe51ed15cc53baab2"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
