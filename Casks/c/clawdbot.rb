cask "clawdbot" do
  version "2026.1.22"
  sha256 "d0e2b270d897b399d316dd141d3beb00a3f09fbcf9c15199eee551daff13e957"

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
