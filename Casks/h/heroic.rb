cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.14.0"
  sha256 arm:   "3ad35338fb01e3b6aeff26c64b0a8bf30e5d0e62fa8fc3aac340d1755b851420",
         intel: "add48677166d908b50b108764022b772ff1261ac901ba92c1ca18f742b91c225"

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
