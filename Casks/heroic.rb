cask "heroic" do
  version "2.5.2"
  arch arm: "arm64", intel: "x64"

  on_intel do
    url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-x64.dmg"
    sha256 "39f48a8aa39ee7bf17767e9afca2abb974426f5856fa8794e2364cf7b0fcd9bc"
  end
  on_arm do
    url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-macOS-arm64.dmg"
    sha256 "a82788df9b8e5603911280b9f7ef403c84ee9688e44fc4c90747a0b265646486"
  end

  name "Heroic Games Launcher"
  desc "Open Source Game Launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher"

  app "Heroic.app"

  zap trash: [
    "~/Library/Application Support/heroic",
    "~/Library/Logs/heroic",
    "~/Library/Preferences/com.electron.heroic.plist",
    "~/Library/Saved Application State/com.electron.heroic.savedState",
  ]
end
