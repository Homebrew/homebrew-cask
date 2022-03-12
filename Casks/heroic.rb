cask "heroic" do
  version "2.2.5"
  sha256 "84bc62cad3fe54ed5d5a8fdca05f5f1aee67d330dc062811de9d6c7aaa6bd1d1"

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
