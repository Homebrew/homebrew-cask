cask "freeyourmusic" do
  arch intel: "-x64"

  version "9.14.0"
  sha256 arm:   "9c2a5ee6f723ab299e16c8df17456997c7e8f4aba226718ffb2cdead73ec7a71",
         intel: "13ebe3474adeb624e8a1491e33be3ea10635a3a1346762afe223f17d4ea1dee8"

  url "https://fym-app-production.s3.nl-ams.scw.cloud/FreeYourMusic-#{version}#{arch}.dmg",
      verified: "fym-app-production.s3.nl-ams.scw.cloud/"
  name "FreeYourMusic"
  desc "Move playlists, tracks, and albums between music platforms"
  homepage "https://freeyourmusic.com/"

  livecheck do
    url "https://s3.nl-ams.scw.cloud/fym-app-production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FreeYourMusic.app"

  zap trash: [
    "~/Library/Application Support/Caches/freeyourmusic-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.freeyourmusic.app.sfl*",
    "~/Library/Application Support/FreeYourMusic",
    "~/Library/Caches/com.freeyourmusic.app",
    "~/Library/HTTPStorages/com.freeyourmusic.app",
    "~/Library/Logs/FreeYourMusic",
    "~/Library/Preferences/ByHost/com.freeyourmusic.app.ShipIt.*.plist",
    "~/Library/Preferences/com.freeyourmusic.app.plist",
    "~/Library/Saved Application State/com.freeyourmusic.app.savedState",
  ]
end
