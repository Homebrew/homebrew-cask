cask "miro" do
  version "0.5.3"
  sha256 :no_check

  url "https://desktop.miro.com/platforms/darwin/Miro.dmg"
  name "Miro"
  name "RealtimeBoard"
  desc "Online collaborative whiteboard platform"
  homepage "https://miro.com/"

  livecheck do
    skip "No version information available"
  end

  app "Miro.app"

  zap trash: [
    "~/Library/Preferences/com.electron.realtimeboard.plist",
    "~/Library/Saved Application State/com.electron.realtimeboard.savedState",
  ]
end
