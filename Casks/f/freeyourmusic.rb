cask "freeyourmusic" do
  version "8.0.1"
  sha256 "6c0b16b2ff3417dfffb310a58f408ccaa087b54b3627a3758f3ed6759d5fa5bd"

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
