cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.18.1"
  sha256 arm:   "ae312bb7bac330e55f5f03eac2eb4ab6ca7be63a2d5e13cf93065f49d4d8df8e",
         intel: "1048e5d8de837cf527821c0478bff2501383b9dedee3e8cf5dc0cd10e43c16ec"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Preferences/com.heroicgameslauncher.hgl.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
