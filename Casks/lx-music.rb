cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.17.1"

  if Hardware::CPU.intel?
    sha256 "80f281d459dcf8fa3561281c1af91728a32b3b8d405d75ef8f15c7dd0c0d05ad"
  else
    sha256 "533c6e193de26fe1315888525dfd9c971a2a5eca5f0239ffff40d5d6ea5bfcc3"
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
