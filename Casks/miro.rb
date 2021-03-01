cask "miro" do
  version "0.4.9"
  sha256 :no_check

  url "https://desktop.miro.com/platforms/darwin/Miro.dmg"
  name "Miro"
  name "RealtimeBoard"
  homepage "https://miro.com/"

  app "Miro.app"

  zap trash: [
    "~/Library/Preferences/com.electron.realtimeboard.plist",
    "~/Library/Saved Application State/com.electron.realtimeboard.savedState",
  ]
end
