cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.1"
  sha256 arm:   "7127ac40f16cbfabf6554e8a34640057a3117fe0a622a0060f3864986ac27ceb",
         intel: "22ddf8cd45f6f49b64bc9e98668b8511475f449f257f1cb433a4d9065443c4fb"

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
