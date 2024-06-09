cask "sipgate-softphone" do
  version "1.17.17"
  sha256 "2a1fd5b3a60ebc076ed5c810277da8d28a4001380f3e43ca40a0276853fea13f"

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
