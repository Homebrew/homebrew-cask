cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.3"
  sha256 arm:   "8fd4194fd1998732a67263917c97600b2e5b4a07df01978463d694a32194d326",
         intel: "f1ff4b6e57dcf34b329fcce36587ee820572a9807a960393f94f15511241fb1e"

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
