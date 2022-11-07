cask "gpxsee" do
  version "11.7"
  sha256 "58e633c532062f1dc415f7bb9e9e4bee62fc923a609e24c7eee8a7829795afdf"

  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg",
      verified: "sourceforge.net/gpxsee/Mac%20OS%20X/"
  name "GPXSee"
  desc "GPS log file viewer and analyzer"
  homepage "https://www.gpxsee.org/"

  app "GPXSee.app"

  zap trash: [
    "~/Library/Caches/GPXSee",
    "~/Library/Preferences/com.gpxsee.GPXSee.plist",
  ]
end
