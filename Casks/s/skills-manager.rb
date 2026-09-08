cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.38.0"
  sha256 arm:   "2b1aadc8427ba86af494533621a6ed107275c3b1891bc83ce2e6a5ab6ccec71a",
         intel: "fd697f4d3934fc3989957d5ee3e1f58ae7f11749b8b0a88569275591ac5dcad0"

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
