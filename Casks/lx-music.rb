cask "lx-music" do
  version "1.4.0"
  sha256 "cb9298c4bab7d6f7530a94fd8194bf4af4a80baad5af5ee36dd55a333f1a1b70"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
