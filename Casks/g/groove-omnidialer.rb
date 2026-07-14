cask "groove-omnidialer" do
  version "26.714.742"
  sha256 "861a4e4b79411fe91bb1cae040479fca669d78f2cbd51b7e13d1b6a3834adb79"

  url "https://groove-dialer.s3-us-west-2.amazonaws.com/electron/Groove%20OmniDialer-#{version}-universal.dmg",
      verified: "groove-dialer.s3-us-west-2.amazonaws.com/electron/"
  name "Groove OmniDialer"
  desc "Outbound sales dialer for making and managing calls"
  homepage "https://www.groove.co/"

  livecheck do
    url "https://groove-dialer.s3.us-west-2.amazonaws.com/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :catalina

  app "Groove OmniDialer.app"

  uninstall quit: "com.electron.dialer"

  zap trash: [
    "~/Library/Application Support/com.electron.dialer",
    "~/Library/Caches/com.electron.dialer",
    "~/Library/HTTPStorages/com.electron.dialer",
    "~/Library/Preferences/com.electron.dialer.plist",
    "~/Library/Saved Application State/com.electron.dialer.savedState",
  ]
end
