cask "lx-music" do
  version "1.5.0"
  sha256 "e9e96235d3db380db5ca2a295364edb6a7f740f4a512aa6a2b02932b2370232d"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
