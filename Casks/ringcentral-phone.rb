cask "ringcentral-phone" do
  version "23.2.0"
  sha256 "82851db8655e13554a4013bdf05217ff46174357a4ad28849cd148ceaa50e7d7"

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
