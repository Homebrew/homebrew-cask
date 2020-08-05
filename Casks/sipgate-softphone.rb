cask "sipgate-softphone" do
  version "1.10.9"
  sha256 "41734fd9e06033a33647e61f1d81743f3a8bd0068a38b27557a9b6162f45211e"

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
