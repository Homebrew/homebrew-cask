cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.18.0"

  if Hardware::CPU.intel?
    sha256 "773c7b67cb8f948ddbcdef984cf958452327d8f45a8d82bebdd22f2b4ed9eb32"
  else
    sha256 "2581d2bc494b3fec311ff5e4788711d4dece75b10cbf271a95521c6312f15485"
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
