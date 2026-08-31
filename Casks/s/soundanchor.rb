cask "soundanchor" do
  version "1.8.3"
  sha256 "6647785c1ddf776f40408f0b824425d5706d200acb1bc8cd6cc68f44e4f3b74f"

  url "https://cdn.kopiro.me/soundanchor/soundanchor-#{version}.dmg"
  name "SoundAnchor"
  desc "Audio device utility"
  homepage "https://apps.kopiro.me/soundanchor/"

  livecheck do
    url "https://cdn.kopiro.me/soundanchor/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "soundanchor.app", target: "SoundAnchor.app"

  uninstall quit: "me.kopiro.soundanchor"

  # No zap stanza required
end
