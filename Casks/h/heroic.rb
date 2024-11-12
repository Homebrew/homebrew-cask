cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.15.2"
  sha256 arm:   "8c35963a36c4990a4da955a7596ca4d2f03c81f024de5a1f91cc7151e4e424b6",
         intel: "370e7af3600bb04dae3d4a413365ffdd9a5dda87283438b443e257fd0475bace"

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
    "~/Library/Preferences/com.heroicgameslauncher.hgl.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
