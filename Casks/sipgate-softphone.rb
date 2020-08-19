cask "sipgate-softphone" do
  version "1.10.14"
  sha256 "8ec9acab1f7924d82d3f65d3971c2bd7af7bcba1161ea572f314e26ff74ebb87"

  # sipgate-desktop-app-dev.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://sipgate-desktop-app-dev.s3.amazonaws.com/sipgate-softphone-#{version}.dmg"
  appcast "https://sipgate-desktop-app-dev.s3.amazonaws.com/latest-mac.yml"
  name "sipgate softphone"
  homepage "https://www.sipgateteam.de/softphone"

  app "sipgate softphone.app"

  zap trash: [
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
    "~/Library/Preferences/com.sipgate.desktop.plist",
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
  ]
end
