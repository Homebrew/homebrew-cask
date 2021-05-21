cask "lx-music" do
  version "1.9.0"
  sha256 "d3a362b12afe2660cfcb1579fb97330a546f127e94fb01bd47e205936d5d76c0"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
