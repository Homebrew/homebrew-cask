cask "freeyourmusic" do
  arch intel: "-x64"

  version "9.7.0"
  sha256 arm:   "44df87321b5183dd42c390d03c1b35bffa67d4aaf3c4aebb8b75cccc7502eaa3",
         intel: "1e0e899a112ded120c1314ca2d6d1291cdc747a77703d11997211ae985abae49"

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
