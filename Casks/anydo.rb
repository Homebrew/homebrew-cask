cask "anydo" do
  version "5.0.12"
  sha256 "f69b5e99c664aa979681ce2341cff2e7e2135ddf30d7c3a668900889b3835360"

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
