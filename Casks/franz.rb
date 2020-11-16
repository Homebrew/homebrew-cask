cask "franz" do
  version "5.6.0"
  sha256 "b8956aa576ffec8f537235ecf5d2bcb8ff02045c6d2253bb6845e18f7e4e8c93"

  # github.com/meetfranz/franz/ was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast "https://github.com/meetfranz/franz/releases.atom"
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
