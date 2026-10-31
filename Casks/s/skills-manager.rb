cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.2"
  sha256 arm:   "225f4c3ef0c2a5d9305841b57200f520ccfea975a3362fe2d5a3aa65423c7b6e",
         intel: "aa532e0b583c72242cb6f7a4704f67b6bbc50327a76197495ea84108e42bc95e"

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
