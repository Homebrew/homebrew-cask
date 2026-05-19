cask "soundanchor" do
  version "1.7.1"
  sha256 "089b530ef494bffad4a00c51e9184a25e810a67cab09fa61881abad551013430"

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
