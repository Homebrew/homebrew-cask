cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.34.2"
  sha256 arm:   "078368940f6d79581642b062c28c5c257ca4f69e12fe6978486e41bec244c386",
         intel: "08945003b97e52ce1760dd03020ebb7c00ba79de19bb7e00889956fe2a225943"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "Manage, sync, and organize AI agent skills across coding tools"
  homepage "https://github.com/xingkongliang/skills-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

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
