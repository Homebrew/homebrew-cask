cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.15.0"
  sha256 arm:   "3cfc39bcf7f47d719557857515da6a618efab61400550c5bd7c1bf7c3a911f49",
         intel: "c9b8c6211343b695c65f2315b2e02fad5e7dcfe456e77c259a96100edfc4b65c"

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
