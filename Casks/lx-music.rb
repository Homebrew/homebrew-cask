cask "lx-music" do
  version "1.6.1"
  sha256 "f02a21abef01bd435b73b23ff5ea438691acb4e3ab6845ae16970a10c30893d7"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
