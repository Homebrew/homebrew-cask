cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.2"
  sha256 arm:   "6e7fe31b6ab4d806c703c9d7a3dae7e9cba9e982f7c7a1806e1bdcace687f180",
         intel: "fd13fa17795a87788002a84aced310126b9616878e4275c2e1aa41158d0601f9"

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
