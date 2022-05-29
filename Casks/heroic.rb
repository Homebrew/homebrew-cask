cask "heroic" do
  version "2.3.4"
  sha256 "bab83604433e6f6e092c45881757f425916b8131790f6845241d92304b54afb4"

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
