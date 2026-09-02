cask "openclaw" do
  version "2026.8.2"
  sha256 "7a0f703e97a8ed87baf0e11c4c5e2b945c712a2db18164229e9af1756dfe115a"

  url "https://github.com/openclaw/openclaw/releases/download/v#{version}/OpenClaw-#{version}.dmg"
  name "OpenClaw"
  desc "Personal AI assistant"
  homepage "https://openclaw.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "OpenClaw.app"

  zap trash: [
    "~/.openclaw",
    "~/Library/Application Support/OpenClaw",
    "~/Library/HTTPStorages/bot.molt.mac",
    "~/Library/Logs/DiagnosticReports/OpenClaw*",
    "~/Library/Preferences/bot.molt.mac.plist",
    "~/Library/Preferences/bot.molt.shared.plist",
  ]
end
