cask "sipgate-softphone" do
  version "1.17.19"
  sha256 "2f979c72825f127013191af782cdca9caa40381135343b46ff151691f919833e"

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
