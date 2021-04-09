cask "anydo" do
  version "4.2.145"
  sha256 "37d0a85e8853ef508f719d640315b7bd2390a804e422b1bb4147fcd515e56611"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"

  zap trash: [
    "~/Library/Application Support/@anydo",
    "~/Library/Preferences/com.anydo.mac.plist",
    "~/Library/Saved Application State/com.anydo.mac.savedState",
  ]
end
