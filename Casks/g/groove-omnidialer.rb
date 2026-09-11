cask "groove-omnidialer" do
  version "26.910.928"
  sha256 "a6189d1a678cc091a68a6325ec2d759ec06deca8504f061e3747ac4e58a285a1"

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
