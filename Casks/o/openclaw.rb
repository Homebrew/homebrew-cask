cask "openclaw" do
  version "2026.9.5"
  sha256 "63df4287eca0350df49e792b376a13d24414f0989e0ab382ba6afca2519439f5"

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
    "~/Library/Caches/ai.openclaw.mac",
    "~/Library/HTTPStorages/ai.openclaw.mac",
    "~/Library/HTTPStorages/bot.molt.mac",
    "~/Library/Logs/DiagnosticReports/OpenClaw*",
    "~/Library/Preferences/ai.openclaw.mac.plist",
    "~/Library/Preferences/ai.openclaw.shared.plist",
    "~/Library/Preferences/bot.molt.mac.plist",
    "~/Library/Preferences/bot.molt.shared.plist",
    "~/Library/WebKit/ai.openclaw.mac",
  ]
end
