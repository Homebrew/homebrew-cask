cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "be0c796ea170868054a4cd3e4f6254a431c37474743183fba67e8960b0900ccd",
         intel: "f128572d74983c306e97583eeae7dba283b65ea0f88bcfe5f9030be79f079f52"

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
