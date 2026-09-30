cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.2"
  sha256 arm:   "73e634e7efd990b002041d63b1a7b9ea76473c7712c031150ed618e5358ef15d",
         intel: "133ce2deb5dc1e294c331d10f4fa55d839ed7104a6bc6b6fbfd7f46a303aa3b7"

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
