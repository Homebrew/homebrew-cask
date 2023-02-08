cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.5"
  sha256 arm:   "52236c91e942584711a703b9632642fb01cde321fa0f63f53ea89d8e2bc5e246",
         intel: "6f442579e87153ab8437b46e54f5da5f83d85254e968ae2be7a7a6d7e05f2d33"

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
