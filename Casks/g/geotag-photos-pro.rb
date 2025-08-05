cask "geotag-photos-pro" do
  version "1.9.7"
  sha256 "4cf4414fad5c9c472f8c334b543868d8d6b9d0a3a90736285dd2ec0be3ee3238"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}.dmg",
      verified: "github.com/tappytaps/geotag-desktop-app/"
  name "Geotag Photos Pro"
  desc "Geotagging software"
  homepage "https://www.geotagphotos.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Geotag Photos Pro 2.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tappytaps.geotagphotosdesktop.sfl*",
    "~/Library/Application Support/Geotag Photos Pro*",
    "~/Library/Logs/Geotag Photos Pro*",
    "~/Library/Preferences/com.tappytaps.geotagphotosdesktop.plist",
    "~/Library/Saved Application State/com.tappytaps.geotagphotosdesktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
