cask "soundanchor" do
  version "1.1.1"
  sha256 "06dbc84bea696d40e3ce7d848aa445166efda0cdcfc7be2f32cf0bbf1aaea04c"

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
