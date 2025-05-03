cask "soundanchor" do
  version "1.3.0"
  sha256 "e98af6306da1626203f7a11168505e88bebea19ed4a5abebc6be154cd8eadadd"

  url "https://apps.kopiro.me/soundanchor/builds/SoundAnchor-#{version}.dmg"
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
