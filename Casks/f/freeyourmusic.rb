cask "freeyourmusic" do
  version "8.0.3"
  sha256 "4ef11439ae5dee141c33191f248e8d7b5f1b1bc2bb1a9609ce3b637f0ea4a5f1"

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
