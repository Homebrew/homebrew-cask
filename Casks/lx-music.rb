cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.2"
  sha256 arm:   "dbb8803ffc75008f314882ea3e82cb26f7df46dca6813d84a9c6a605492d8100",
         intel: "fb18d7b7357a313cfec1adb229b1fc2646e79190e166ca058af13b8f22d7c22e"

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
