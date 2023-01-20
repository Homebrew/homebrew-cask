cask "anydo" do
  version "5.0.18"
  sha256 "41dde3f73e41942ab1f551406dbb29af6068ec6895882abdce61aa21e8ef2b48"

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
