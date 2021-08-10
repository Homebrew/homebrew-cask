cask "gpxsee" do
  version "9.4"
  sha256 "af9ef4efaeb33022bcf2963e4e34a66780bf5e9420d8e2269c356042483fd64d"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
