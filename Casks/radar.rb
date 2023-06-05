cask "radar" do
  version "2.6.1"
  sha256 "45ba3ebd7424fcaa2d3ffecbc0332cc273ed3bd65b971e60da8787092553fea0"

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
