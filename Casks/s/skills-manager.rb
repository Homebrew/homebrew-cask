cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.36.2"
  sha256 arm:   "4b6ef3a33caa3ebcebdb84b1178857b1e9b5cd7a3ab4d311931087f4eaa5ba6b",
         intel: "195fb49f1d1cf1f17582aedfcf63568bb3c3514aa72f77c4a8e31499b27b32d3"

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
