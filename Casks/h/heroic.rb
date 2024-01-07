cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "96f6293bf1a472fa6b9d1e8889dfca8130690b25e33da5450695aa3122bccd96",
         intel: "8a341acb51af9298e7c90710239d9d4361c6cbee25457fc6a6895c4cb8614703"

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
