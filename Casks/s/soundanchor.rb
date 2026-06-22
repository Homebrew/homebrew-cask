cask "soundanchor" do
  version "1.8.1"
  sha256 "c91ff3f761e2d50648f8a1327c115cc2790f604cf789156faf5834619c47a64b"

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

  app "SoundAnchor.app"

  # No zap stanza required
end
