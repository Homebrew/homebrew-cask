cask "taskade" do
  version "4.4.4"
  sha256 "0e94c250fc8f5993083884bab2070ea05d82e4402eec3e392a223c844d11f680"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  app "Taskade.app"

  zap trash: [
    "~/Library/Application Support/taskade",
    "~/Library/Preferences/com.taskade.plist",
    "~/Library/Saved Application State/com.taskade.savedState",
  ]
end
