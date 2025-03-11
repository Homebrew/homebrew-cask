cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.16.1"
  sha256 arm:   "7918b0c530cbcfdd0028d45cfc2107f3bbb1b4ce50775663babd76599d467b74",
         intel: "8c5f89b8b40cdea4e4d572f6e7344c081ea0f31098d2b8a2be72161a45d82dc2"

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
