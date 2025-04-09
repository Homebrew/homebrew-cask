cask "soundanchor" do
  version "1.2.0"
  sha256 "f6a6c56743fa2db0770cf47df117b45735d099c3b776b62a6c618f2910b5e4ff"

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
