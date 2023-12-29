cask "anydo" do
  version "5.0.53"
  sha256 "f38d17012dd3739dee31ea5d883e663f5fdfbb40b3cd16704640d553ff6f655e"

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
