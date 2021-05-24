cask "lx-music" do
  version "1.10.0"
  sha256 "78836b46f224622fe66c22b04f41521999ad60463e94b0ab00d6efd8edcd1fc9"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
