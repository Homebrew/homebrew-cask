cask "lx-music" do
  arch arm: "-arm64"

  version "2.1.2"
  sha256 arm:   "962e29272abf211dd8f8c0bded65686a3df5005fb15fa87b7ffddea466e3e028",
         intel: "e16444cce7ba28b409f5536d6357b57b6cadcf30e0b2a7a03121091021ee7e8d"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end
