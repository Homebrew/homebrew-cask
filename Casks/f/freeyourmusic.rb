cask "freeyourmusic" do
  arch intel: "-x64"

  version "9.31.1"
  sha256 arm:   "ca139dc304519de6165efd1460974da321bd148a372d2d22dfbf60498da81e04",
         intel: "c1d2e4a496c55735e5913eab510349148852c69ebf443e9fae03555a3d9f3101"

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
