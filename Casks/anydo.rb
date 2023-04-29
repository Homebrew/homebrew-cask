cask "anydo" do
  version "5.0.32"
  sha256 "6e0be03342a593328a731b95437b2b86956feb80da5305caa2b3b0168baa1e5a"

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
