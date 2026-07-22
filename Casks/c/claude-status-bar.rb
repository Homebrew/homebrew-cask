cask "claude-status-bar" do
  version "0.3.4"
  sha256 "d812ebf2b3ef161c06b700636789b517b47222a093d2074f0cc324903b514aea"

  url "https://github.com/m1ckc3s/claude-status-bar/releases/download/v#{version}/ClaudeStatusBar.dmg"
  name "Claude Status Bar"
  desc "Menu bar status indicator for Claude Code"
  homepage "https://github.com/m1ckc3s/claude-status-bar"

  depends_on macos: :monterey

  app "ClaudeStatusBar.app"

  zap trash: [
    "~/.claude/statusbar",
    "~/Library/Caches/com.local.claudestatusbar",
    "~/Library/HTTPStorages/com.local.claudestatusbar",
    "~/Library/Preferences/com.local.claudestatusbar.plist",
  ]
end
