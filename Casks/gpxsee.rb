cask "gpxsee" do
  version "9.6"
  sha256 "28ce823003c8108f8011d3926cc357c47dd16b74f213331ffff36922870a13ea"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
