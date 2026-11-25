cask "geotag" do
  version "6.1"
  sha256 "fe8a0d4bb3ee5e3dae87e6d3d7e7c990d15dec6d4ccd71c6ff74fbf6e905071a"

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  name "GeoTag"
  desc "Geo location editor for images"
  homepage "https://www.snafu.org/GeoTag/"

  livecheck do
    url :homepage
    regex(/href=.*?GeoTag[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on formula: "exiftool"
  depends_on macos: :tahoe

  app "GeoTag.app"

  uninstall quit: "org.snafu.GeoTag"

  zap trash: [
    "~/Library/Application Scripts/org.snafu.GeoTag",
    "~/Library/Caches/org.snafu.GeoTag",
    "~/Library/Containers/org.snafu.GeoTag",
    "~/Library/Preferences/org.snafu.GeoTag.plist",
    "~/Library/Saved Application State/org.snafu.GeoTag.savedState",
  ]
end
