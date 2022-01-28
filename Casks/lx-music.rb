cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.17.0"

  if Hardware::CPU.intel?
    sha256 "a2496dc2f6694170c678fa5165d1eea86d327c586aff42c1df5320e853fe7c3e"
  else
    sha256 "9df76e05c0400b782760d673d144c4ae591626dcbcc5cd40bd5e7187fc2bfce0"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end
