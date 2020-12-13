cask "lunar-client" do
  version "2.4.0"
  sha256 "d5e1a4fc18a4e86b11fe702d7a96c942d02168eeaab4cf30be27290dba5a9915"

  url "https://launcherupdates.lunarclientcdn.com/Lunar%20Client%20v#{version}.dmg",
      verified: "launcherupdates.lunarclientcdn.com/"
  appcast "https://launcherupdates.lunarclientcdn.com/latest-mac.yml"
  name "Lunar Client"
  desc "Modpack for Minecraft 1.7.10 and 1.8.9"
  homepage "https://www.lunarclient.com/"

  app "Lunar Client.app"

  zap trash: [
    "~/Library/Application Support/lunarclient",
    "~/Library/Caches/com.moonsworth.client",
    "~/Library/Caches/com.moonsworth.client.ShipIt",
    "~/Library/Logs/Lunar Client",
    "~/Library/Preferences/com.moonsworth.client.plist",
    "~/Library/Saved Application State/com.moonsworth.client.savedState",
  ]
end
