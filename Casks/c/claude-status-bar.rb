cask "claude-status-bar" do
  version "0.3.3"
  sha256 "9cee29e1b06fca60aadf9159d522c1db0d44a62a23410b4dbf3a8bc3b3db5bbd"

  url "https://github.com/m1ckc3s/claude-status-bar/releases/download/v#{version}/ClaudeStatusBar.dmg"
  name "Claude Status Bar"
  desc "Menu bar app that shows Claude Code's live status"
  homepage "https://github.com/m1ckc3s/claude-status-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ClaudeStatusBar.app"

  zap trash: [
    "~/.claude/statusbar",
    "~/Library/Preferences/com.local.claudestatusbar.plist",
  ]
end
