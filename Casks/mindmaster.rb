cask "mindmaster" do
  version "8.5.1,851"
  sha256 :no_check

  url "https://download.edrawsoft.com/mindmaster_full5378.dmg"
  name "MindMaster"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.com/mindmaster/"

  app "MindMaster.app"

  zap trash: [
    "~/Library/Preferences/com.edrawsoft.mindmaster.plist",
    "~/Library/Saved Application State/com.edrawsoft.mindmaster.savedState",
  ]
end
