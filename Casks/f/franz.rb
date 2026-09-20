cask "franz" do
  arch arm: "arm64", intel: "x64"

  version "6.8.2"
  sha256 arm:   "ecb093dbfc3f027b2c4dcd8f19741068b8aadb3c9e8668edd1eba8e4f57e821a",
         intel: "cad73e04161b3955de66242eab34278ade4e3905d845a0b000286353cb167fec"

  url "https://github.com/meetfranz/franz-6/releases/download/v#{version}/Franz-#{arch}.dmg"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.meetfranz.franz.sfl*",
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
