cask "anydo" do
  version "5.0.58"
  sha256 "b13a4750e30b3138bca9ff165f0bf946b4c6a90ec139099d1914f42be65c2fb7"

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
