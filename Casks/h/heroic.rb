cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "f2ab43f01631a75a8c58e63255c275e1052b89a4bd2cf184e9678a65375632eb",
         intel: "7e6fe5413403cba95d0bf1c359375fbeecdf18973a25ddd9a32d0f72389ca053"

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
