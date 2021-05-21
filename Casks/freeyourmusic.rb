cask "freeyourmusic" do
  version "6.0.0"
  sha256 "f696cf0749cd6182808a06bffcac6f5f80a7695ba4ec3a0c77ecdde87f81b824"

  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg",
      verified: "dzqeytqqx888.cloudfront.net/"
  name "FreeYourMusic⁩"
  desc "Move playlists, tracks, and albums between music platforms"
  homepage "https://freeyourmusic.com/"

  livecheck do
    url "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "FreeYourMusic.app"
end
