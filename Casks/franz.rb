cask "franz" do
  version "5.7.0"
  sha256 "197f143c7f3cfae472b1c6a66f6387f948357a94ae12a04977293ed41662a8ff"

  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg",
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
