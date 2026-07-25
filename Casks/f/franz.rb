cask "franz" do
  arch arm: "arm64", intel: "x64"

  version "6.5.2"
  sha256 arm:   "1ed3efa55b87423b5e35f055d452cf4ed35e1cc21a2b99758569de1cfb4056a6",
         intel: "ebde45e8a793f0cff87510ee229d48a004296760b589e0674ff1829488e21c2c"

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
