cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "e53f88c1a7e048cccd798ac6d4ba931b8da84f621d40fad94a919a3f6d145ea5",
         intel: "ee149cf64275e75286545f33f9adc79ef4a8947600348ca25e93eb2c49d4a55b"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "Manage, sync, and organise AI agent skills across coding tools"
  homepage "https://github.com/xingkongliang/skills-manager"

  auto_updates true
  depends_on :macos

  app "skills-manager.app"

  zap trash: [
    "~/.skills-manager",
    "~/Library/Caches/com.agentskills.desktop",
    "~/Library/Logs/com.agentskills.desktop",
    "~/Library/Preferences/com.agentskills.desktop.plist",
    "~/Library/WebKit/com.agentskills.desktop",
  ]
end
