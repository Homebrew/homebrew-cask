cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.9.2"
  sha256 arm:   "e91120656b65205882eded98a9bd655d336a76d0b8b84b6fedd8d4928094309c",
         intel: "b6d86624cb840a562962a930e5a033da103abe15e19885f351e3ac5f81fad902"

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
