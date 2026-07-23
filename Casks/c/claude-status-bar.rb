cask "claude-status-bar" do
  version "0.4.1"
  sha256 "f959ed62f8ca4e9108d8098c928b73a1b5ed99d1155a8fc3d3f7bbc2588e277c"

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
