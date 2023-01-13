cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.3"
  sha256 arm:   "52095a1a256ebc89cc4f7cc642971206bbd603b525a8d9357ffbe96bb1713b74",
         intel: "d3a88801acb9a91efb1069bbfe185a14d559d600c3891afef0b14c8f3b34dfef"

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
