cask "radar" do
  version "2.3.3"
  sha256 "6d37e166c612510a94a43ad9a21a25a64faa94010b929700aaa9137ca2b8ab69"

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
