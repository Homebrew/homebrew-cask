cask "google-assistant" do
  version "1.0.0"
  sha256 "43056591c48bb33fb574740f7c502d0be4533801e4490d9f533445244152aea5"

  url "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client/releases/download/v#{version}/Google-Assistant-#{version}.dmg"
  name "Google Assistant Unofficial Desktop Client"
  desc "Cross-platform unofficial Google Assistant Client for Desktop"
  homepage "https://github.com/Melvin-Abraham/Google-Assistant-Unofficial-Desktop-Client"

  app "Google Assistant.app"

  zap trash: [
    "~/Library/Application Support/Caches/g-assist-updater",
    "~/Library/Application Support/Google Assistant",
    "~/Library/Logs/Google Assistant",
    "~/Library/Preferences/com.redvirus.g-assist.plist",
    "~/Library/Saved Application State/com.redvirus.g-assist.savedState",
  ]
end
