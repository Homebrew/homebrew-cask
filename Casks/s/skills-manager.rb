cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.1"
  sha256 arm:   "daa706b58035e6e1d9eaa4c1ca379ccf0f7f1bcb14596b162f6a6d6be1593365",
         intel: "14971ab12767acd99bec67eda5bba87368d92dacdb072904eae049468df7d3c1"

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
