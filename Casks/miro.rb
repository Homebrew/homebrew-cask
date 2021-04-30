cask "miro" do
  version "0.5.3"

  if Hardware::CPU.intel?
    sha256 "cbbab2ee8fcd6b819735d109c2383131ef083b66a85548c48cc46bc6d16efa99"
    url "https://desktop.miro.com/platforms/darwin/Miro.dmg"
  else
    sha256 "3c5c3530ddee3916104aec14413e3276ea5beacd666355cb6b328f3fcdedcd37"
    url "https://desktop.miro.com/platforms/darwin-arm64/Miro.dmg"
  end
  
  name "Miro"
  name "RealtimeBoard"
  desc "Online collaborative whiteboard platform"
  homepage "https://miro.com/"

  livecheck do
    skip "No version information available"
  end

  app "Miro.app"

  zap trash: [
    "~/Library/Preferences/com.electron.realtimeboard.plist",
    "~/Library/Saved Application State/com.electron.realtimeboard.savedState",
  ]
end
