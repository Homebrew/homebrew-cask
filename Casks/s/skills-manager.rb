cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.4"
  sha256 arm:   "ae66597366eb906ffdb7b466b85a9cda35d2b67fb888d4ef5f97aec67369e36c",
         intel: "d42c10c072839461dea4db47b1cf2b55f9740a7f7472406662a33c358c05bd3b"

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
