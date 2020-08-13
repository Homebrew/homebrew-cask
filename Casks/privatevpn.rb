cask "privatevpn" do
  version "3.0.4"
  sha256 "4c01b52ef1a103fd3a631d15f25fead0fae95148b3568029457bac559529ee52"

  url "https://privatevpn.com/client/PrivateVPN.dmg"
  appcast "https://xu515.pvdatanet.com/v3/mac/appcast.xml"
  name "PrivateVPN"
  homepage "https://privatevpn.com/"

  depends_on macos: ">= :el_capitan"

  app "PrivateVPN.app"

  zap trash: [
    "/Library/LaunchDaemons/com.privat.vpn.helper.plist",
    "/Library/PrivilegedHelperTools/com.privat.vpn.helper",
    "~/Library/Application Support/com.privat.vpn",
    "~/Library/Caches/com.privat.vpn",
    "~/Library/Cookies/com.privat.vpn.binarycookie",
    "~/Library/Preferences/com.privat.vpn.plist",
  ]
end
