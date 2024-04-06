cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.14.1"
  sha256 arm:   "7059218695c96394a2102398437d270ecec08e9a0e21e1ac8a36ead266e67eff",
         intel: "65d2a288b02a616b65b66efb0996e914c56003bbfd937b389741d7d59843b5e1"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  auto_updates true

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
