cask "puremac" do
  version "2.0.0"
  sha256 "4329eeade96e65d8e4206a885498ef6921434afab4f6ba3ce3efab20a01fe4b1"

  url "https://github.com/momenbasel/PureMac/releases/download/v#{version}/PureMac-#{version}.zip",
      verified: "github.com/momenbasel/PureMac/"
  name "PureMac"
  desc "Open-source macOS app manager and system cleaner"
  homepage "https://github.com/momenbasel/PureMac"

  depends_on macos: ">= :ventura"

  app "PureMac.app"

  zap trash: [
    "~/Library/Caches/com.puremac.app",
    "~/Library/LaunchAgents/com.puremac.scheduler.plist",
    "~/Library/Preferences/com.puremac.app.plist",
  ]
end
