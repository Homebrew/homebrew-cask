cask "tiny-player" do
  version "1.6.9"
  sha256 "7beffb0a17b1dae7665dbb539f21ab4b4ccac481a726812b8eac3cec8ef16151"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Tiny Player.app"

  zap trash: [
    "~/Library/Application Support/Tiny Player",
    "~/Library/Caches/com.catnapgames.playermac",
    "~/Library/Preferences/com.catnapgames.playermac.plist",
  ]
end
