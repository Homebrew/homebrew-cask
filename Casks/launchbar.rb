cask "launchbar" do
  version "6.13"
  sha256 "18b3b10f976279afd267920b4cdb5ab47722e548dc10006411f24f464f796bf1"

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
