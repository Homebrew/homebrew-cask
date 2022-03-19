cask "shortery" do
  version "1.2,11"
  sha256 :no_check

  url "https://lgerckens.de/shortery/Shortery.zip"
  name "Shortery"
  desc "Shortcut automation"
  homepage "https://lgerckens.de/shortery/"

  livecheck do
    url "https://www.lgerckens.de/shortery/update_feed.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Shortery.app"

  uninstall quit:       "com.shortery-app.Shortery",
            login_item: "Shortery"

  zap trash: [
    "~/Library/Application Support/com.shortery-app.Shortery",
    "~/Library/Preferences/com.shortery-app.Shortery.plist",
    "~/Library/Saved Application State/com.shortery-app.Shortery.savedState",
  ]
end
