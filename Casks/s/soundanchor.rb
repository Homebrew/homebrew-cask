cask "soundanchor" do
  version "1.3.2"
  sha256 "c7a5c4274a21f74e629fab7e3a2e3d44ffbaacc4689db7b2b83e22a0fde5cec5"

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
