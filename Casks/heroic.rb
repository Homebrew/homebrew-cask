cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "91874700fb749b89490fd3160191968a3470a1ff0851d7656848b42d4401605b",
         intel: "6539b8c7feb1aadd3d575ecac8614a83897590a745c76bddf9fbf529eac91fcf"

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
