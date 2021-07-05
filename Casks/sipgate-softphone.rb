cask "sipgate-softphone" do
  version "1.16.2"
  sha256 "3e0add0ef764dab7994e78f55dd97292b931dc2e46e332184a911898f64088ce"

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
