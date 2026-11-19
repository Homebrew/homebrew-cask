cask "soundanchor" do
  version "1.9.1"
  sha256 "0efdf8bbf9cae9a4d2decfe036fa2c4bd3423d12a2fce41127a90d042f29f3a8"

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

  zap :not_required
end
