cask "freeyourmusic" do
  version "6.1.10"
  sha256 "664d2fb2cb3e853fd877e69755cc1f88e72184a9807a7215c1d57111ffd61fb0"

  url "https://fym-app-production.s3.nl-ams.scw.cloud/FreeYourMusic-#{version}.dmg",
      verified: "fym-app-production.s3.nl-ams.scw.cloud/"
  name "FreeYourMusic⁩"
  desc "Move playlists, tracks, and albums between music platforms"
  homepage "https://freeyourmusic.com/"

  livecheck do
    url "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "FreeYourMusic.app"
end
