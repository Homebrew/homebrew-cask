cask "ringcentral-phone" do
  version "22.2.0"
  sha256 "45ff07e8eca38ccde0a4e0d353fc5f5329d4ce4754853496b5bbb63aed96778c"

  url "https://downloads.ringcentral.com/sp/RingCentral-Phone-#{version}.dmg"
  name "RingCentral Phone"
  desc "Phone system manager"
  homepage "https://www.ringcentral.com/apps/rc-phone"

  livecheck do
    url "https://downloads.ringcentral.com/sp/RingCentralForMac"
    strategy :header_match
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "RingCentral for Mac.app", target: "RingCentral Phone.app"

  zap trash: [
    "~/Library/Preferences/com.ringcentral.RingCentral Phone.plist",
    "~/Library/Saved Application State/com.ringcentral.ringcentralformac.savedState",
  ]
end
