cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.1"
  sha256 arm:   "3d6a93a76bf94e85b2bf22af06016d618fabb070333e9b5e22aa38b0a61f7258",
         intel: "68da7e29771f25c881c3e79ea1607841928d292ad76f2fcbf80a75505bdb158c"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "Manage, sync, and organise AI agent skills across coding tools"
  homepage "https://github.com/xingkongliang/skills-manager"

  auto_updates true
  depends_on :macos

  app "skills-manager.app"

  zap trash: [
    "~/.skills-manager",
    "~/Library/Application Support/com.agentskills.desktop",
    "~/Library/Application Support/skills-manager",
    "~/Library/Caches/com.agentskills.desktop",
    "~/Library/Logs/com.agentskills.desktop",
    "~/Library/Preferences/com.agentskills.desktop.plist",
    "~/Library/WebKit/com.agentskills.desktop",
  ]
end
