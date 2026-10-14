cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "259d7b36e4638abe4edd46dae38c43f714243d1bccc34c29e39f7b9e45170b77",
         intel: "cafa132cdcb88655af08b4c92553bfe2a0e5fac1f92bc941d0cd7f973b86aa0c"

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
