cask "privatevpn" do
  version "3.3.6"
  sha256 :no_check

  url "https://privatevpn.com/client/PrivateVPN.dmg"
  name "PrivateVPN"
  desc "VPN provider"
  homepage "https://privatevpn.com/"

  disable! date: "2026-01-07", because: :unreachable

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
