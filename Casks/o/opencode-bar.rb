cask "opencode-bar" do
  version "2.1.3"
  sha256 "0f536276f7cf05b033ad838b90157474ba31cc7d8b2404600c02426b1c671f23"

  url "https://github.com/kargnas/opencode-bar/releases/download/v#{version}/OpenCodeUsageMonitor-v#{version}.dmg",
      verified: "github.com/kargnas/opencode-bar/"
  name "OpenCode Bar"
  desc "Monitor AI provider usage from OpenCode in the macOS menu bar"
  homepage "https://github.com/kargnas/opencode-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "OpenCode Bar.app"
  binary "#{appdir}/OpenCode Bar.app/Contents/MacOS/opencodebar-cli", target: "opencodebar"

  zap trash: [
    "~/Library/Application Support/com.copilotmonitor.CopilotMonitor",
    "~/Library/Caches/com.copilotmonitor.CopilotMonitor",
    "~/Library/HTTPStorages/com.copilotmonitor.CopilotMonitor",
    "~/Library/Preferences/com.copilotmonitor.CopilotMonitor.plist",
    "~/Library/Saved Application State/com.copilotmonitor.CopilotMonitor.savedState",
  ]
end
