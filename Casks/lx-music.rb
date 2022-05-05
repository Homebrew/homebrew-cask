cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.20.0"

  if Hardware::CPU.intel?
    sha256 "50f6e5fa2124f6872ddaa0291f742e93cefd8d83560c9bf41eb9578f3cf3ed08"
  else
    sha256 "f5574a6ada5a0652357eb1fbfd9e2cc7d326d25cdab4d76f9bff660992fed1b2"
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
