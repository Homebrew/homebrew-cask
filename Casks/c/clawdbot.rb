cask "clawdbot" do
  version "2026.1.23"
  sha256 "9c613726df1a4e4fd81e2be80e03bf13bb601f32ce9142656f398a95491d929a"

  url "https://github.com/clawdbot/clawdbot/releases/download/v#{version}/Clawdbot-#{version}.dmg",
      verified: "github.com/clawdbot/clawdbot/"
  name "Clawdbot"
  desc "Personal AI assistant"
  homepage "https://clawd.me/"

  depends_on macos: ">= :sequoia"

  app "Clawdbot.app"

  zap trash: [
    "~/.clawdbot",
    "~/Library/Application Support/clawdbot",
    "~/Library/HTTPStorages/com.clawdbot.mac",
    "~/Library/Logs/DiagnosticReports/Clawdbot*",
    "~/Library/Preferences/com.clawdbot.mac.plist",
    "~/Library/Preferences/com.clawdbot.shared.plist",
  ]
end
