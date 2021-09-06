cask "anydo" do
  version "4.2.157"
  sha256 "6c1c79f44a5fe7b46e7843bb4207c514f1ead099e5b54feaa49f0449ab68a834"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"

  zap trash: [
    "~/Library/Application Support/@anydo",
    "~/Library/Preferences/com.anydo.mac.plist",
    "~/Library/Saved Application State/com.anydo.mac.savedState",
  ]
end
