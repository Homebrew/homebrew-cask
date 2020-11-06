cask "launchbar" do
  version "6.13.1"
  sha256 "91c0423cdc0cb7a618357e2c9df7c05844ea077f9908640288af0e7eeacf384e"

  url "https://www.obdev.at/downloads/launchbar/LaunchBar-#{version}.dmg"
  appcast "https://sw-update.obdev.at/update-feeds/launchbar-#{version.major}.plist"
  name "LaunchBar"
  desc "Productivity tool"
  homepage "https://www.obdev.at/products/launchbar/index.html"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "LaunchBar.app"

  zap trash: [
    "~/Library/Application Support/LaunchBar",
    "~/Library/Caches/at.obdev.LaunchBar",
    "~/Library/Preferences/at.obdev.LaunchBar.plist",
    "~/Library/Saved Application State/at.obdev.LaunchBar.savedState",
  ]
end
