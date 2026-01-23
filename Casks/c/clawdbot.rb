cask "clawdbot" do
  version "2026.1.21"
  sha256 "a6db450ff604d8ce691316380e8e8c4abaa7ce04d55f7b1488c0b24334fa3d16"

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
