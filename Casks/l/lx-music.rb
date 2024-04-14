cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "0f1a6f6001f34ddabb436e5a34b69ebe9f4105f39d4c48e72e0b390e7aeb294b",
         intel: "cfe8b1b456cb804afad287d2fd3cca3de2879f0473063445312771e556b07afb"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-#{arch}.dmg"
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
