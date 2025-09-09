cask "geotag-photos-pro" do
  version "1.9.8"
  sha256 "2a4bf21074fb45f51d69f3ce3744a3510dff87ae8de39451040552df5e7d6017"

  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/Geotag-Photos-Pro-2-#{version}-universal.dmg",
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
end
