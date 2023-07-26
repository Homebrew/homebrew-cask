cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "c9e9283a198bd8e30d4c833c49a57f965b1ce6741b1692e05897121482e805af",
         intel: "352e182d1ed24ff0dba6faa524a8a357f1e922470b65084ce02df8d856480c64"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
