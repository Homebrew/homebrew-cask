cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.36.1"
  sha256 arm:   "2936536e1d376c2cc24eaf72af95b35e0ce88d097d5b20752584036bce84f316",
         intel: "23504c6615a54ef2468231c37a770e312b6f0f27aa6444d0a379c109b857fbd3"

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
