cask "ringcentral-phone" do
  version "20.3.2"
  sha256 "b51bb7f76fed3a2cad5714e53171ff7d49316a64a7832ddf791ba2e4fb3a7137"

  url "https://downloads.ringcentral.com/sp/RingCentral-Phone-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/sp/RingCentralForMac"
  name "RingCentral Phone"
  homepage "https://www.ringcentral.com/apps/rc-phone"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "RingCentral for Mac.app", target: "RingCentral Phone.app"
end
