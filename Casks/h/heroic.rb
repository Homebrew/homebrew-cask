cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.18.0"
  sha256 arm:   "9148e26eec77f5464c7ccd898f7a7e1ce082b08b1cb3eb5fe4d971731efd5e0a",
         intel: "ce0b682a1a2283a9b7eb741efee3c1a60ddc8e50373650429f16978123aa6afa"

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
