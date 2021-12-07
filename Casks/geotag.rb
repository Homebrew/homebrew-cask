cask "geotag" do
  version "4.13"
  sha256 "6fb3a72676919a4d5e95b8cf482e699647f0410597a165ceef27be36bccf2f95"

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
