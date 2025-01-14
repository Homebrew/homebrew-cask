cask "lunar-client" do
  version "3.3.3"
  sha256 "00ddded192ed5546106f235b5454e5b62936c8ee5547b6de23800510a3ef3c04"

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
