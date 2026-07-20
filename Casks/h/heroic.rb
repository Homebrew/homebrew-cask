cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.22.0"
  sha256 arm:   "ce24a8d3a5e066e9333e37c924170676855d9cba2dd90cea6030958dd07de1e4",
         intel: "23b1be21b34d3874ea6134c0e16276775412d44b265cdf9f31af06b2614e002d"

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
