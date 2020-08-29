cask "sipgate-softphone" do
  version "1.10.17"
  sha256 "bd14ec7ea3ca0f4a1e0f6d45d811637ddc577873afce0986f9402618bab22c00"

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
