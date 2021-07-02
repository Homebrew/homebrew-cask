cask "radar" do
  version "1.0.0"
  sha256 "76a40ccbb74134fd1ceccfecd0d592d8387172365b37288296d4b6584487fb99"

  url "https://getradar.co/download/v#{version}.dmg"
  name "radar"
  desc "Check the important metrics from the menubar"
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
