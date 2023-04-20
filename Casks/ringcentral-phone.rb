cask "ringcentral-phone" do
  version "23.1.1"
  sha256 "72dafa6a45b90382860039281f914edbc42671945f5da350f18eb26c198a990f"

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
