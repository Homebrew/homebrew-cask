cask "claude-status-bar" do
  version "0.4.4"
  sha256 "1943381cfb49e0d703cff4adf42cdf77254d4b2f79688ee9955600b28c0c6d68"

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
