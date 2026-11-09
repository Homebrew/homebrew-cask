cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.3"
  sha256 arm:   "fb49fd15194a8292fc51adc60ee7cd716c92815f1de00ec6235e95bba01f74ae",
         intel: "a5af4946947a85101ba211606bf111fe13f6f993f6ad1da6c20a29b2ed2e546d"

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
