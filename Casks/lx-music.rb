cask "lx-music" do
  version "1.2.2"
  sha256 "638ed654632457ba5835d88e9fed8b947d318019ce1a44236729d9d91b085414"
  
  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  appcast "https://github.com/lyswhut/lx-music-desktop/releases.atom"
  name "洛雪音乐助手桌面版 LX Music Desktop"
  desc "一个基于 Electron + Vue 开发的音乐软件。 A music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"
  
  app "lx-music-desktop.app"
end
