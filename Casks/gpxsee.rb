cask "gpxsee" do
  version "9.3"
  sha256 "1f43ef1f5502c01346748c0525c4f6749b4320ac8d6c71960b9683d5e3b31621"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
