cask "soundanchor" do
  version "1.3.3"
  sha256 "dc1f8694bfeabdcac1017b154206cbfcef9148db1ec3bfbd7e05ad3476a2d8ab"

  url "https://kopiro.s3.eu-west-1.amazonaws.com/soundanchor/SoundAnchor-#{version}.dmg",
      verified: "kopiro.s3.eu-west-1.amazonaws.com/soundanchor/"
  name "SoundAnchor"
  desc "Audio device utility"
  homepage "https://apps.kopiro.me/soundanchor/"

  livecheck do
    url "https://apps.kopiro.me/soundanchor/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SoundAnchor.app"

  # No zap stanza required
end
