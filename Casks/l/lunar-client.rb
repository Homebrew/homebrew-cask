cask "lunar-client" do
  version "3.4.5"
  sha256 "2f857c3f355797b58b2e838f6e582cccc0d7bf1ac846e5ce63bcefe72b2f3a89"

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
