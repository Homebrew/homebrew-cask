cask "ccmonitor" do
  version "0.1.10"
  sha256 "b07a9ca094cfa44f33c2c61381a0c3c9ab787524dcbc89af5d054a5c02697001"

  url "https://github.com/K9i-0/ClaudeCodeMonitor/releases/download/v#{version}/ClaudeCodeMonitor-#{version}.dmg"
  name "Claude Code Monitor"
  desc "Monitor Claude Code API usage and costs in your menubar"
  homepage "https://github.com/K9i-0/ClaudeCodeMonitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "ClaudeCodeMonitor.app"

  uninstall quit: "com.k9i.claude-code-monitor"

  zap trash: [
    "~/Library/Application Support/Claude Code Monitor",
    "~/Library/Preferences/com.k9i.claude-code-monitor.plist",
  ]
end
