cask "lx-music" do
  arch arm: "-arm64"

  version "1.22.3"
  sha256 arm:   "acbb45635987def11ba8e28e0acde50a66834d08a756bbd02683c5b5bb782a4b",
         intel: "720dee814471dcb3e360d3d2fdd5e3a2747551030500a7725fca7c1422f98a32"

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
