cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.35.0"
  sha256 arm:   "691d6227366cf597674cb0a95412985d3e27947c5ddcfeec58cfd57774d81b48",
         intel: "1677ef2fabe2cd3096e51fccadb17791ab24b50e5ff3a1f6baf9696c7e1b22eb"

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
