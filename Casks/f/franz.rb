cask "franz" do
  arch arm: "-arm64"

  version "5.10.0"
  sha256 arm:   "97fac95cdc2c4080c6f9a0659befae61e63c6f2332aa8aa2b75dcc07d4d00a82",
         intel: "dc7bef96dabd0b86199430cd7699b17dae6cbc6eae5f6962b14d93381d0df853"

  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}#{arch}.dmg",
      verified: "github.com/meetfranz/franz/"
  name "Franz"
  desc "Messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and more"
  homepage "https://meetfranz.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
