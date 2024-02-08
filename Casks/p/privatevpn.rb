cask "privatevpn" do
  version "3.3.2"
  sha256 :no_check

  url "https://privatevpn.com/client/PrivateVPN.dmg"
  name "PrivateVPN"
  desc "VPN provider"
  homepage "https://privatevpn.com/"

  livecheck do
    url "https://privatevpn.com/why-privatevpn/view-our-software/"
    regex(/Mac\s*OS(?:\s+X)?\s+VPN\s+App\s+(?:Version\s+)?v?(\d+(?:\.\d+)+)/i)
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
