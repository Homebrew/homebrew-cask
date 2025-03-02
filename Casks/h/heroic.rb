cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.16.0"
  sha256 arm:   "ea6cc8ba07a3c5b1010af18e82e8cce0044095aaad8c3f665d8622c7d4c8b349",
         intel: "a31d4841ee2dce40d0be67b7dc1c499f375e6a782496f8b7f4e0bf5eb0a0bc93"

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
