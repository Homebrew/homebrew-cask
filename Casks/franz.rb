cask "franz" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.9.1"

  if Hardware::CPU.intel?
    sha256 "ff177691e82bd29b9caa57dd602bd955d00accd68d3d5147a015f6ac4eb3f5bc"
  else
    sha256 "48e2e918f43aec4b2c47822a9eb53e7053c1c7ce54a1642012a851a54661ad16"
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
