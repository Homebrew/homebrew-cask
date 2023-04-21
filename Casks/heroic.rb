cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "88474c8e5b46016fb576aa31d68e8e872de399b96adef99760c5054425e3e887",
         intel: "c05c200c923211e5220631bb3b902ff34c9957b7fd525d2b6879a216d54a8ec4"

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
