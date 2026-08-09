cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.22.1"
  sha256 arm:   "4f803330ae6f0c084876589cef335ce98812b6a1598df2f170451fbf0ecb9007",
         intel: "fbf1bf989f5f7206d3508a53779eaca28af7e51542ac761dc1b2bc13421dc310"

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-#{arch}.dmg"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
