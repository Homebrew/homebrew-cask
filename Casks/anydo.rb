cask "anydo" do
  version "5.0.27"
  sha256 "1bb0263a0e18b09a3a8081ceddb2bee2f402d0971e4e65b06f7e35982b0e119a"

  url "https://electron-app.any.do/Anydo-#{version}-universal.dmg"
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
