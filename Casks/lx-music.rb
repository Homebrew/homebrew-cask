cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "b9a7d925851ba9865f9fd84ef775a27cafbd1756a9f342b8a229fc4e343c3ec3",
         intel: "1d88e5e072d61e2167e5d7a7f3823fb3c34f4d273a68451b8c521cb430dbd716"

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
