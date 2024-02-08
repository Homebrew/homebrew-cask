cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "a466b3c9b77ea39090bb0214bd35e8c6bc7fa229487b79ed622f102123e1623c",
         intel: "a1ea4201bec9511cf63579c71c27d4c25eb4c8f1625e092e664ff394c8f596c1"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-#{arch}.dmg"
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
