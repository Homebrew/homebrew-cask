cask "soundanchor" do
  version "1.7.0"
  sha256 "c0231b8ce768813469c00acd073dad0d768371fff841e83baf734df856c3d34c"

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
