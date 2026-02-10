cask "soundanchor" do
  version "1.6.0"
  sha256 "035065faf2fdd3e5e9b2c7e43d09f17254cf637c6882d34b78d8c0f4d81868cb"

  url "https://kopiro.s3.eu-west-1.amazonaws.com/soundanchor/SoundAnchor-#{version}.dmg",
      verified: "kopiro.s3.eu-west-1.amazonaws.com/soundanchor/"
  name "SoundAnchor"
  desc "Audio device utility"
  homepage "https://apps.kopiro.me/soundanchor/"

  livecheck do
    url "https://kopiro.s3.eu-west-1.amazonaws.com/soundanchor/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "SoundAnchor.app"

  # No zap stanza required
end
