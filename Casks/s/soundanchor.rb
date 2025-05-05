cask "soundanchor" do
  version "1.3.1"
  sha256 "8acc07fec6194c7d8eb175f4ae4bd1fa69e426f11f189ac0dd8811c423e23408"

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
