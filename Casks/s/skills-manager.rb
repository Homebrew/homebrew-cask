cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.35.1"
  sha256 arm:   "53b2e1f0f610195ba24be64c4138f6aba300ff96b1710a83f0aa32e6378dcee1",
         intel: "41266f88fb9899beade9cb82ed09c164b043ec5de291129cbd7ea8a49dbf0f95"

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
