cask "soundanchor" do
  version "1.9.2"
  sha256 "2fc13d93771633323d33ab95643577d9ae3508613b69311935d383db49de8676"

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

  zap trash: [
    "~/Library/Application Scripts/me.kopiro.soundanchor",
    "~/Library/Containers/me.kopiro.soundanchor",
  ]
end
