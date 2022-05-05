cask "franz" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.9.2"

  if Hardware::CPU.intel?
    sha256 "9b6907c132624c645e9d39bc9822a239b0e3a7507d40bcc97bf2be6ca3fc171f"
  else
    sha256 "700342d6d3a6b532e5e7a3767c8b97d9bcfc9eb0959098f02d3b13462fdcfb7d"
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
