cask "lx-music" do
  version "1.4.1"
  sha256 "b653467163917fff5a0275605c09a064093e898fe9de2c38a5c3c965aa2f100a"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
