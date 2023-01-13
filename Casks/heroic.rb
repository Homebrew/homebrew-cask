cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 intel: "d1e73f3058fda882ebc188544576127b2459d41d15bf452f8ad8c71ab78f6d92",
         arm:   "a82788df9b8e5603911280b9f7ef403c84ee9688e44fc4c90747a0b265646486"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Open Source Game Launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
