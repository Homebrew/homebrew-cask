cask "lx-music" do
  version "1.11.0"

  if Hardware::CPU.intel?
    sha256 "b12f2f5d835ce1a2737d3be79f8ecd200e86c0588dcec33d582958d3b23fa666"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "4b9c8a098835e2c3813ef5436e14632fa9370df638031a5097fca958f3efafc3"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
