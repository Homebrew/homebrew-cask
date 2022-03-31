cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.19.0"

  if Hardware::CPU.intel?
    sha256 "5b74b064cef37e3baa60ef53e49fa77d64e21dd3514ab477bf45b27310f812a9"
  else
    sha256 "cec46d809868ac7dcded4f5237ab4a606216c2b232cefe8a03841114fe90175f"
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
