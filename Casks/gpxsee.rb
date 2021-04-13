cask "gpxsee" do
  version "8.9"
  sha256 "16a49bdc347a5c9cc5727cd0a0e091120bbeeeb1fc97977c32942655a12ea66a"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
