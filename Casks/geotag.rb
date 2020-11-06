cask "geotag" do
  version "4.9"
  sha256 "ad90415ca66aeea9029e00eeb829ad9706365bbd44340d3467f40d71e5c1d4b4"

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast "https://github.com/marchyman/GeoTag/releases.atom"
  name "GeoTag"
  desc "Geo location editor for images"
  homepage "https://www.snafu.org/GeoTag/"

  depends_on macos: ">= :sierra"
  depends_on formula: "exiftool"

  app "GeoTag.app"

  zap trash: [
    "~/Library/Caches/org.snafu.GeoTag",
    "~/Library/Preferences/org.snafu.GeoTag.plist",
    "~/Library/Saved Application State/org.snafu.GeoTag.savedState",
  ]
end
