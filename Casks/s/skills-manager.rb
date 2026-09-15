cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.39.0"
  sha256 arm:   "ece7f426039ad0889e482c53f453fd2decbddf37814b5117968694572cc7ff00",
         intel: "148793aabd041fc732351b0bd56d08f9f9031a8431cecc7a248d803dec783f0f"

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
