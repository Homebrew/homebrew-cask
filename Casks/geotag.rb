cask "geotag" do
  version "4.99.3"
  sha256 "0dc0ff13af16a101ab6bbdb923a2d442dba2095f8c769234769cccec51d95ab3"

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  name "GeoTag"
  desc "Geo location editor for images"
  homepage "https://www.snafu.org/GeoTag/"

  livecheck do
    url "https://www.snafu.org/GeoTag/"
    regex(/href=.*?GeoTag[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"
  depends_on formula: "exiftool"

  app "GeoTag.app"

  zap trash: [
    "~/Library/Caches/org.snafu.GeoTag",
    "~/Library/Preferences/org.snafu.GeoTag.plist",
    "~/Library/Saved Application State/org.snafu.GeoTag.savedState",
  ]
end
