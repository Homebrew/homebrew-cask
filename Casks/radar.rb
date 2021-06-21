cask "radar" do
  version "0.0.7"
  sha256 "4da555427992a313c2d67ac2b61bfd9f85b80cb850b356c9896c3cbecaf87755"

  url "https://github.com/syncwithtech/radar-release/releases/download/v#{version}/Radar-#{version}.dmg",
      verified: "github.com/syncwithtech/radar-release/"
  name "radar"
  desc "Check the important metrics from the menubar"
  homepage "https://getradar.co/"

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
