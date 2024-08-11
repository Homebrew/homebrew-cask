cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.15.1"
  sha256 arm:   "87cb560a0943808c3beea1c1c580267e1c6e46b4994d23b2f46cf30b7c1c4a04",
         intel: "36d0065ba1d9912540aa4cda99537c86577be77fe2113c910e44402dea99d21b"

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
