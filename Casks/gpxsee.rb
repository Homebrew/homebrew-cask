cask "gpxsee" do
  version "9.11"
  sha256 "755e9715dc70b43544431d4a1970c4a2ca3fc08a230a8958201b4a9904c165e5"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
