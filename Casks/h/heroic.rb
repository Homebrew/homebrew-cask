cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256 arm:   "69f9e76c0183535ef791b9474cfb1b08d0e066ebe7be49468eef7b92cb7d068c",
         intel: "d10214f8fe8d8414667784df87a62ccd43712ad7b83647c9cccf3049deec11cd"

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
