cask "freeyourmusic" do
  version "7.0.2"
  sha256 "1e9f92ff104f84c0657b9e83814f9109cef75788c5e58b7c91a7b50c5594642e"

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
