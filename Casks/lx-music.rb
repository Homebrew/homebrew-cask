cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.15.0"

  if Hardware::CPU.intel?
    sha256 "b967e834d742c54c3c2692be52ed212df316ed8ee9af6677f7652eb82282f5f7"
  else
    sha256 "d6b2eb82fc70174389b39d7c0b6c002841d8b19357c6b90139d873510bd3f87a"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
