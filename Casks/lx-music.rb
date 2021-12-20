cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.15.3"

  if Hardware::CPU.intel?
    sha256 "90bd45b883126910f16b2655ca3377865cca06a2ef4db38aed17fff3111dd849"
  else
    sha256 "cf2e6abcc3e41c27c9bb7640b0f71523d6b596f96b6fa93e3d1032e0b4ff155e"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
