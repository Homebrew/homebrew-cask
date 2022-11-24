cask "anydo" do
  version "5.0.11"
  sha256 "ce2f8ed0fa4a87508e73bff78c66b8c563b3a3ff8adecbaed57ef1bad8280616"

  url "https://electron-app.any.do/Anydo-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Anydo.app"

  zap trash: [
    "~/Library/Application Support/@anydo",
    "~/Library/Preferences/com.anydo.mac.plist",
    "~/Library/Saved Application State/com.anydo.mac.savedState",
  ]
end
