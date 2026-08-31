cask "openclaw" do
  version "2026.8.1"
  sha256 "a4c94f4f6c8684323a6c64669c7f1cfed92525d6ccc7d5219b7f9e308983814f"

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
