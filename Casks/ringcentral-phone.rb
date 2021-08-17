cask "ringcentral-phone" do
  version "21.2.1"
  sha256 "fa5fc61023702a33f9979b9264091816905c29972390ca8ef616123b9bf2fac3"

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
