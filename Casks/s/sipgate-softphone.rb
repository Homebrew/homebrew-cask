cask "sipgate-softphone" do
  version "1.17.9"
  sha256 "7334ff05522b3932079aae569fe9af9947e5b9ffad4569415a90e0ea8466c2dd"

  url "https://sipgate-desktop-app-dev.s3.amazonaws.com/sipgate-softphone-#{version}.dmg",
      verified: "sipgate-desktop-app-dev.s3.amazonaws.com/"
  name "Sipgate Softphone"
  desc "Make telephone calls on the computer"
  homepage "https://www.sipgate.de/softphone-download"

  livecheck do
    url "https://sipgate-desktop-app-dev.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "sipgate softphone.app"

  zap trash: [
    "~/Library/Preferences/com.sipgate.desktop.plist",
    "~/Library/Saved Application State/com.sipgate.desktop.savedState",
  ]
end
