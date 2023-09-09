cask "lx-music" do
  arch arm: "-arm64"

  version "2.4.1"
  sha256 arm:   "08047eca2c8388b8e3d773280a5ef2eb853fee2df46e1c1a6f4b91c25d963c2e",
         intel: "b18c4bc6808ca3399db66c3c09865eafa326503aac8c21d9cf3dc82793b02130"

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
