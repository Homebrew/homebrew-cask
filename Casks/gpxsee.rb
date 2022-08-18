cask "gpxsee" do
  version "11.3"
  sha256 "5b2efa51ff17df6119abbe09922bde4819804d831b871ef353206cff7f17578b"

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
