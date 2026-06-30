cask "franz" do
  arch arm: "arm64", intel: "x64"

  version "6.4.0"
  sha256 arm:   "a8cf46e9b2f5904e62d9e9e06ccaad00df0bd249a8104923e421fc33abd07c38",
         intel: "2dd1a3fe1fc00c0275e460b6bca35472e86d749d8a1d5d2a3e36fbc8f7c4045b"

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
