cask "heroic" do
  version "2.4.1"
  sha256 "1f754701f96ab2dbd55317616ab2784943439dbca63b7989f5a2815da146423a"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}.dmg"
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
