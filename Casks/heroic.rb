cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "56481b12ea0800994b2f65e9515e3c9c7a5bc4d4b748858813e053151ee62781",
         intel: "3d59c3cf20cf2f482f1d5db77bbece2da478fbfae35cc627ff77b76e4dc5390d"

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
