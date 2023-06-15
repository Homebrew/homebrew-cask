cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "736cd8443fc479976a1084e65b7e1fa462783930c3830a29d56f197662b98f0b",
         intel: "79b1558d06716230f8ae0ebeb1937632a3ae62fd2a39f58fb8dd0637b08e4dcf"

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
