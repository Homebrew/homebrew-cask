cask "lunar-client" do
  version "2.6.6"
  sha256 "77ab7350a3fba057143ed72c2a76ae4b42b4289cbe597a8e7b494c0c1536e488"

  url "https://launcherupdates.lunarclientcdn.com/Lunar%20Client%20v#{version}.dmg",
      verified: "launcherupdates.lunarclientcdn.com/"
  name "Lunar Client"
  desc "Modpack for Minecraft 1.7.10 and 1.8.9"
  homepage "https://www.lunarclient.com/"

  livecheck do
    url "https://launcherupdates.lunarclientcdn.com/latest-mac.yml"
    strategy :electron_builder
  end

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
