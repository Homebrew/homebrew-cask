cask "heroic" do
  arch arm: "arm64", intel: "x64"

  version "2.17.2"
  sha256 arm:   "bd5bbfd6d6a3252df3cd83384ecf2eacbb67ef8f5626b9ad294bda889e318e53",
         intel: "9e54cd13cad2ec106f6df64c9e25bc1e27d277bd4886fc70c57e49ab331a7cbb"

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
