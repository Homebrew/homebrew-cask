cask "freeyourmusic" do
  arch intel: "-x64"

  version "9.32.0"
  sha256 arm:   "9706328b0dbeb9231ee64f6099e8428326e8ff9facf73cd71a6969eae28a7f13",
         intel: "59a8afe9164b270a7cc5f0907a2bfc84b3086e874c76926f27245f225e26f613"

  url "https://fym-app-production.s3.nl-ams.scw.cloud/FreeYourMusic-#{version}#{arch}.dmg"
  name "FreeYourMusic"
  desc "Move playlists, tracks, and albums between music platforms"
  homepage "https://freeyourmusic.com/"

  livecheck do
    url "https://s3.nl-ams.scw.cloud/fym-app-production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
