cask "battery-notifier" do
  version "4.2.1"
  sha256 "c92024319e8c14290f921585d6dc57c233f3c719c1b1a2d69ad08e85771fca15"

  url "https://github.com/Sandip124/BatteryNotifier/releases/download/v#{version}/BatteryNotifier-osx-arm64.zip"
  name "BatteryNotifier"
  desc "Cross-platform battery monitoring and notification app"
  homepage "https://github.com/Sandip124/BatteryNotifier"

  depends_on macos: ">= :ventura"

  app "BatteryNotifier.app"

  zap trash: [
    "~/Library/Application Support/BatteryNotifier",
    "~/Library/LaunchAgents/com.batterynotifier.plist",
  ]
end