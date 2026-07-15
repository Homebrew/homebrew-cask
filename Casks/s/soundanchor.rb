cask "soundanchor" do
  version "1.8.2"
  sha256 "338eaf6838880e8a9676040b8a37eadec0f8b1e4c18937836b8a05abac2118eb"

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
