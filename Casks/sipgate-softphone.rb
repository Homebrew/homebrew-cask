cask "sipgate-softphone" do
  version "1.10.19"
  sha256 "9da62f6a30d70b17540d359470db8a61d9bcf4a38bcbaa868d7f0fcdb11b5524"

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
