cask "lx-music" do
  arch arm: "-arm64"

  version "2.2.2"
  sha256 arm:   "d77f717d09c2b3c7db73c2078cef9a8f195eb4a15a04c3e862b505e71f00dde4",
         intel: "7d8bbb8477e071eb359b1577a569b7cc1044cdfa8b12eb2349b74cec97413610"

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
