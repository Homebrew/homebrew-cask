cask "geotag" do
  version "5.6"
  sha256 "fa1a345ff717afdd209aae2afc8ab893f51a01edf2c46163e42d2a12c18d1b84"

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
