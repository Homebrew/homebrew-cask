cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.21.0"
  sha256 arm:   "2774a15ceba1a2df2ac4e86a256727f065b09d34d18d5f3da4fa847661d220bb",
         intel: "f521e3466f802530cf7ed962f1c4c90e11310f443da4c1b4f8de641bd9def674"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/Heroic Games Launcher",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Preferences/com.heroicgameslauncher.hgl.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
