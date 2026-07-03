cask "claude-token-monitor-bar" do
  version "1.2.1"
  sha256 "469e0096c498eea3e493b76514fccdd332beac40858e353748ca90ecea06f7b7"

  url "https://github.com/HAOGRE/ClaudeTokenMonitorBar-macOS/releases/download/v#{version}/ClaudeTokenMonitorBar-v#{version}.dmg"
  name "ClaudeTokenMonitorBar"
  desc "Menu bar monitor for Claude Code token usage and costs"
  homepage "https://github.com/HAOGRE/ClaudeTokenMonitorBar-macOS"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "ClaudeTokenMonitorBar.app"
end
