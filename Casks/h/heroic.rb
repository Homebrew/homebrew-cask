cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.20.0"
  sha256 arm:   "df3ec82aba088aef6ad639a75506819033a3212b9587e5ca7505505593ed45a1",
         intel: "daf132309659c4e1065d240826912f576132647134b7f12e4cde8e569ce1d010"

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
