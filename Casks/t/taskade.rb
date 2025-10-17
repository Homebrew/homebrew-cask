cask "taskade" do
  version "4.6.13"
  sha256 "8516cf62fc11ae834aaeafc4466b2cf05bde819c0305f08e4becb8ffe4bc18a9"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  depends_on macos: ">= :monterey"

  app "Taskade.app"

  zap trash: [
    "~/Library/Application Support/taskade",
    "~/Library/Preferences/com.taskade.plist",
    "~/Library/Saved Application State/com.taskade.savedState",
  ]
end
