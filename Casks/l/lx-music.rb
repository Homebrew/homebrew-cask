cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "d60f678df1cab75130accfd25197113eb7ddb2b0a8558698e815a29a1feff333",
         intel: "5c9ebfd3c3a19b962f9c6b1f68ca2abf67839a49b09db9e795f30d606156c97b"

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
