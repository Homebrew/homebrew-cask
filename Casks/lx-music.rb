cask "lx-music" do
  arch arm: "-arm64"

  version "2.2.0"
  sha256 arm:   "1baac720be7ce21f5bd88510610ff9e3d50dbac2f4646b0b9cb0396340b15dbd",
         intel: "1125d9e19b904b968a241b49c9dc7f149dcc15053673e9316892b0afdafc6f36"

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
