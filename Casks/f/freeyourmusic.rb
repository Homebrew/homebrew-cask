cask "freeyourmusic" do
  arch intel: "-x64"

  version "8.8.0"
  sha256 arm:   "039733ef5352068a899524e6f6f350332124523b9a9ae716b0a3c3ceb4d93e85",
         intel: "6ca7f3df0105728c2d79d6ff24bd87ab896ede7aebde65cfe59b449afe3a6cfe"

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
