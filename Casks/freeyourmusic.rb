cask "freeyourmusic" do
  version "6.2.1"
  sha256 "6ff8b1a0c341d89daa1dafaf1f4ae770aa2b2b385ce6fcbb21a28db357700545"

  url "https://fym-app-production.s3.nl-ams.scw.cloud/FreeYourMusic-#{version}.dmg",
      verified: "fym-app-production.s3.nl-ams.scw.cloud/"
  name "FreeYourMusic"
  desc "Move playlists, tracks, and albums between music platforms"
  homepage "https://freeyourmusic.com/"

  livecheck do
    url "https://s3.nl-ams.scw.cloud/fym-app-production/latest-mac.yml"
    strategy :electron_builder
  end

  app "FreeYourMusic.app"

  zap trash: [
    "~/Library/Application Support/FreeYourMusic",
    "~/Library/Logs/FreeYourMusic",
    "~/Library/Preferences/com.freeyourmusic.app.plist",
    "~/Library/Saved Application State/com.freeyourmusic.app.savedState",
  ]
end
