cask "lunar-client" do
  version "3.4.6"
  sha256 "56b7024d53b2d4f6c75c73ffcdb8930fe18570f3a740d97267a5e328495114d6"

  url "https://launcherupdates.lunarclientcdn.com/Lunar%20Client%20v#{version}.dmg",
      verified: "launcherupdates.lunarclientcdn.com/"
  name "Lunar Client"
  desc "Modpack for Minecraft 1.7.10 and 1.8.9"
  homepage "https://www.lunarclient.com/"

  livecheck do
    url "https://launcherupdates.lunarclientcdn.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
