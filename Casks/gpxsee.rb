cask "gpxsee" do
  version "9.5"
  sha256 "ef0e6c3ce1c6ac04054ebfb6279b71960590d8cd9ecb2ffeb60e322d9cba2284"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
