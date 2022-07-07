cask "radar" do
  version "2.4.1"
  sha256 "d12fa276635d2b2785a13e89a2ed1f59370d266fa8fa6f65d2db5a4d6d37ba2d"

  url "https://getradar.co/download/v#{version}.dmg"
  name "Radar"
  desc "Check important metrics from the menubar"
  homepage "https://getradar.co/"

  livecheck do
    url "https://getradar.co/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Radar.app"

  uninstall launchctl: "com.syncwithtech.radar.ShipIt",
            quit:      "com.syncwithtech.radar"

  zap trash: [
    "~/Library/Application Support/Caches/radar-updater",
    "~/Library/Application Support/Radar",
    "~/Library/Caches/com.syncwithtech.radar",
    "~/Library/Caches/com.syncwithtech.radar.ShipIt",
    "~/Library/Logs/Radar",
    "~/Library/Preferences/com.syncwithtech.radar.plist",
    "~/Library/Saved Application State/com.syncwithtech.radar.savedState",
  ]
end
