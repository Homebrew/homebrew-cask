cask "gpxsee" do
  version "9.0"
  sha256 "f5065d40f3e0fc297b7e333ab9c1a79e8e873509e4744b401675531fae8a4a32"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyze"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"
end
