cask "shortery" do
  version :latest
  sha256 :no_check

  url "https://lgerckens.de/shortery/Shortery.zip"
  name "Shortery"
  desc "Shortcut automation"
  homepage "https://lgerckens.de/shortery"

  app "Shortery.app"

  uninstall quit: "com.shortery-app.Shortery", login_item: "Shortery"

  zap trash: [
    "~/Library/Application Support/com.shortery-app.Shortery",
    "~/Library/Preferences/com.shortery-app.Shortery.plist",
    "~/Library/Saved Application State/com.shortery-app.Shortery.savedState",
  ]
end
