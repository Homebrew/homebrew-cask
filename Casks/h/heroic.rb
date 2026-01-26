cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.19.0"
  sha256 arm:   "1fb3c8eb2c7697a1a7094cdca25687eb0ec7c6d7458de99dbc1e3c7ff68b8d20",
         intel: "b8919ecb151d3a828a82bb829f13c048b15e7b692abd8ed62d64bea7011530f2"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/Heroic Games Launcher",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Preferences/com.heroicgameslauncher.hgl.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
