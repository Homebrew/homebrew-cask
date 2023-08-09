cask "privatevpn" do
  version "3.2.1"
  sha256 :no_check

  url "https://privatevpn.com/client/PrivateVPN.dmg"
  name "PrivateVPN"
  desc "VPN provider"
  homepage "https://privatevpn.com/"

  livecheck do
    url "https://xu515.pvdatanet.com/v3/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

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
