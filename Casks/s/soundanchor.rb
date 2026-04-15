cask "soundanchor" do
  version "1.6.2"
  sha256 "8aaee5b7869d79d95af1c9e421dff6c90ce12bcc991b1b50b7a3cbad2944c478"

  url "https://cdn.kopiro.me/soundanchor/soundanchor-#{version}.dmg"
  name "SoundAnchor"
  desc "Audio device utility"
  homepage "https://apps.kopiro.me/soundanchor/"

  livecheck do
    url "https://cdn.kopiro.me/soundanchor/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "SoundAnchor.app"

  # No zap stanza required
end
