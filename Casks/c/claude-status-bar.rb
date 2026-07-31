cask "claude-status-bar" do
  version "0.4.3"
  sha256 "70d20f4d5e174457cb3d6b079a79e77a6fcc85c56780a1b3d9cdf1e5a4bd1a22"

  url "https://github.com/m1ckc3s/claude-status-bar/releases/download/v#{version}/ClaudeStatusBar.dmg"
  name "Claude Status Bar"
  desc "Menu bar status indicator for Claude Code"
  homepage "https://github.com/m1ckc3s/claude-status-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Claude Status Bar.app"

  zap trash: [
    "~/.claude/statusbar",
    "~/Library/Caches/com.local.claudestatusbar",
    "~/Library/HTTPStorages/com.local.claudestatusbar",
    "~/Library/Preferences/com.local.claudestatusbar.plist",
  ]
end
