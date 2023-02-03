cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 intel: "e7662de9825fb557a2749b7fee392792e6a63d8f9af4f893ce585a3a20a94d75",
         arm:   "d67d9c26c0cc772b3c8e8f7420eaa7b60d27056e81f9a3a735f85377bb767a1b"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Open Source Game Launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
