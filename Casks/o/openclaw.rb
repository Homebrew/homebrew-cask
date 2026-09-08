cask "openclaw" do
  version "2026.9.2"
  sha256 "b253f96d351bb9160b431730360f14c905b5ccc2b60f5c6136658097f95d7527"

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
