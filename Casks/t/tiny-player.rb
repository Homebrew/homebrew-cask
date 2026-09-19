cask "tiny-player" do
  version "1.7.1"
  sha256 "2079ff6bdb8787a5d329ba57c4688a02420b395adf9db407a5cf05c0b3530bfb"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tiny Player.app"

  zap trash: [
    "~/Library/Application Support/Tiny Player",
    "~/Library/Caches/com.catnapgames.playermac",
    "~/Library/Preferences/com.catnapgames.playermac.plist",
  ]
end
