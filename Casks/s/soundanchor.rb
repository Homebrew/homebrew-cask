cask "soundanchor" do
  version "1.9.0"
  sha256 "7c1c9c81ba6a2d7b4774363a4e77811519362cf373afafda8738792aaa543a0e"

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
