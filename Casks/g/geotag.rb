cask "geotag" do
  version "5.4"
  sha256 "fdbfbac5eb9f09e90b884b4858d2b7be47f598375c3358ccc41e46ba0759243f"

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  name "GeoTag"
  desc "Geo location editor for images"
  homepage "https://www.snafu.org/GeoTag/"

  livecheck do
    url :homepage
    regex(/href=.*?GeoTag[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sonoma"
  depends_on formula: "exiftool"

  app "GeoTag.app"

  zap trash: [
    "~/Library/Caches/org.snafu.GeoTag",
    "~/Library/Preferences/org.snafu.GeoTag.plist",
    "~/Library/Saved Application State/org.snafu.GeoTag.savedState",
  ]
end
