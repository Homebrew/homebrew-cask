cask "heroic" do
  version "2.1.1"
  sha256 "2c71e16d2b9a12b6e4f332d5e1e408d08432bfc8df99144a2e63a4fb142d8bd8"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}.dmg"
  name "Heroic Games Launcher"
  desc "Open Source Game Launcher for Native and Windows Games from Epic Games Store"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher"

  app "Heroic.app"

  zap trash: "~/Library/Preferences/com.electron.heroic.plist"
end
