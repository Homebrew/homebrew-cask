cask "lx-music" do
  version "1.6.0"
  sha256 "58a9d2ab8390359033769ea78cae72752322e6dfd9bd8b9e9b8b0ffbf9c48e6e"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
