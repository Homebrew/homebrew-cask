cask "sipgate-softphone" do
  version "1.15.8"
  sha256 "599da1e4390c3c2cedc41db4c349936677b85f5f2eff2f0f4b8aa15641f6c549"

  url "https://sipgate-desktop-app-dev.s3.amazonaws.com/sipgate-softphone-#{version}.dmg",
      verified: "sipgate-desktop-app-dev.s3.amazonaws.com/"
  name "Sipgate Softphone"
  desc "Make telephone calls on the computer"
  homepage "https://www.sipgateteam.de/softphone"

  livecheck do
    url "https://sipgate-desktop-app-dev.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "sipgate softphone.app"

  zap trash: [
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
    "~/Library/Preferences/com.sipgate.desktop.plist",
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
  ]
end
