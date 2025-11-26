cask "soundanchor" do
  version "1.4.0"
  sha256 "69fa6c32577751b414ac86934826ed3ccb036831c10902670e509b7723bd6a0b"

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
