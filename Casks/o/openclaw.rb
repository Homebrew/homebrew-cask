cask "openclaw" do
  version "2026.3.24"
  sha256 "251f19f4cf8844443b1a2e33ec19e591ecedbfd8bd62f3e5efd704723739a098"

  url "https://github.com/openclaw/openclaw/releases/download/v#{version}/OpenClaw-#{version}.dmg",
      verified: "github.com/openclaw/openclaw/"
  name "OpenClaw"
  desc "Personal AI assistant"
  homepage "https://openclaw.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

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
