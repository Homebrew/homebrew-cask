cask "freeyourmusic" do
  version "7.0.1"
  sha256 "6d55a9c655f6e077694ffb3fbb901f30f972434fec1db5ad74543a3fcbe6fd06"

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
