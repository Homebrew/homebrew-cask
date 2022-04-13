cask "ringcentral-phone" do
  version "21.4.0"
  sha256 "9d0aa95311ee45ba016f55989741a1431788ea8e8d976f30033183ac4c9646fa"

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
