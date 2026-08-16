cask "franz" do
  arch arm: "arm64", intel: "x64"

  version "6.7.0"
  sha256 arm:   "5cf8e00465b0c823acfa72d22e6e4246eba70fdcd5750415b4537d39b767b593",
         intel: "b7ad57e0e10e14637597f1216750e10d6612113be89eb647f098d41368d7fe78"

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
