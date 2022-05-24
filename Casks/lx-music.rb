cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.21.0"

  if Hardware::CPU.intel?
    sha256 "40588f50cc8d447bf501c253cb032229226af8f0da2441e346fa4f4f10244ced"
  else
    sha256 "eca9596009b85e566b349b2e96446086ae2c968e094f7d1bdc7fb304ddfc5a40"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end
