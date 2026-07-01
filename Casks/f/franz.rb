cask "franz" do
  arch arm: "arm64", intel: "x64"

  version "6.4.1"
  sha256 arm:   "473baf26b35990815e499e73726626207f8d3ef9fa50766d7eb7280899a07368",
         intel: "ffb01363c9c350b98617790946085549576ccec8715a5b7a1bb132151400ee26"

  url "https://github.com/meetfranz/franz-6/releases/download/v#{version}/Franz-#{arch}.dmg",
      verified: "github.com/meetfranz/franz-6/"
  name "Franz"
  desc "Messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and more"
  homepage "https://meetfranz.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Franz.app"

  uninstall signal: ["QUIT", "com.meetfranz.franz"],
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
