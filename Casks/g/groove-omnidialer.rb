cask "groove-omnidialer" do
  version "26.917.918"
  sha256 "dd6d540ab38c62a21737c43230659bf6f9039d603bdfd5845eb3138f4809eaf7"

  url "https://groove-dialer.s3-us-west-2.amazonaws.com/electron/Groove%20OmniDialer-#{version}-universal.dmg"
  name "Groove OmniDialer"
  desc "Outbound sales dialer for making and managing calls"
  homepage "https://www.groove.co/"

  livecheck do
    url "https://groove-dialer.s3.us-west-2.amazonaws.com/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

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
