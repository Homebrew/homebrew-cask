cask "franz" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.8.0"

  if Hardware::CPU.intel?
    sha256 "8f390f36ad1d34427e44d8e7b9860253eeaaca878f434482b4a78334a3a028ff"
  else
    sha256 "da49e15cbb6f5cf649bdba2ce480b9adc55b42afc3ba002d754df62e6db1580f"
  end

  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}#{arch}.dmg",
      verified: "github.com/meetfranz/franz/"
  name "Franz"
  desc "Messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and more"
  homepage "https://meetfranz.com/"

  auto_updates true

  app "Franz.app"

  uninstall signal: [
    ["QUIT", "com.meetfranz.franz"],
  ],
            delete: "/Library/Logs/DiagnosticReports/Franz Helper_.*wakeups_resource.diag"

  zap trash: [
    "~/Library/Application Support/Caches/franz-updater",
    "~/Library/Application Support/Franz",
    "~/Library/Caches/com.meetfranz.franz",
    "~/Library/Caches/com.meetfranz.franz.ShipIt",
    "~/Library/Logs/Franz",
    "~/Library/Preferences/ByHost/com.meetfranz.franz.ShipIt.*.plist",
    "~/Library/Preferences/com.electron.franz.helper.plist",
    "~/Library/Preferences/com.electron.franz.plist",
    "~/Library/Preferences/com.meetfranz.franz.plist",
    "~/Library/Saved Application State/com.electron.franz.savedState",
  ]
end
