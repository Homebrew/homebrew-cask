cask "sipgate-softphone" do
  version "1.10.12"
  sha256 "397b29adb0e5d81347dfde7ba96db4f40994b7c4b728fb8847493b9a3b0dfe0e"

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
