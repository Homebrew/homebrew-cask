cask "claude-status-bar" do
  version "0.4.5"
  sha256 "dc42a480a86288b3a5ffd65d4f905460608b3fd25600efe5704b59275cb643eb"

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
