cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.0"
  sha256 arm:   "67a445c4d59611a0eb243bb7212d8816f534233b517d8fdeafdfe12c1a948996",
         intel: "a6985483002d8f83a5995a64c2bca298946b9e1488e4759398f0a2a28c48a6dd"

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
