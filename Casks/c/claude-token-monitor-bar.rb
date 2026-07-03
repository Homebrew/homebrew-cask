cask "claude-token-monitor-bar" do
  version "1.2.1"
  sha256 "8a5554181edbedabc070a1d2c634106d7d3ac2f7b412362bfe42338e2246ce8b"

  url "https://github.com/HAOGRE/ClaudeTokenMonitorBar-macOS/releases/download/v#{version}/ClaudeTokenMonitorBar-v#{version}.dmg"
  name "ClaudeTokenMonitorBar"
  desc "Menu bar monitor for Claude Code token usage and costs"
  homepage "https://github.com/HAOGRE/ClaudeTokenMonitorBar-macOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClaudeTokenMonitorBar.app"

  zap trash: [
    "~/Library/Application Scripts/com.haogre.claudetokenmonitor",
    "~/Library/Caches/com.haogre.claudetokenmonitor",
    "~/Library/Containers/com.haogre.claudetokenmonitor",
    "~/Library/HTTPStorages/com.haogre.claudetokenmonitor",
    "~/Library/Preferences/com.haogre.claudetokenmonitor.plist",
    "~/Library/Saved Application State/com.haogre.claudetokenmonitor.savedState",
  ]
end
