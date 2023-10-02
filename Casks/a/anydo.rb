cask "anydo" do
  version "5.0.46"
  sha256 "d636ef3d530239b945aa9994c0a96bfbf069b6fa7a241f726c327a94f37ab4a7"

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
