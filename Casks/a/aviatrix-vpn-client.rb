cask "aviatrix-vpn-client" do
  version "2.17.7"
  sha256 :no_check

  url "https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg",
      verified: "aviatrix-download.s3.amazonaws.com/"
  name "Aviatrix VPN Client"
  desc "VPN client that provides SAML authentication"
  homepage "https://docs.aviatrix.com/previous/documentation/latest/aviatrix-openvpn/download-vpn-client.html"

  livecheck do
    url "https://docs.aviatrix.com/documentation/latest/release-notes/vpn-client/vpn-release-notes.html"
    regex(/href=.*?aviatrix[._-]vpn[._-]client[._-]v?(\d+(?:[.-]\d+)+)[ "<]/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("-", ".") }
    end
  end

  pkg "AVPNC_mac.pkg"

  uninstall launchctl: "aviatrix.vpn.client.rp.plist",
            pkgutil:   "com.Aviatrix.VPNClient",
            delete:    "/Applications/Aviatrix VPN Client.app"

  zap trash: [
    "~/Library/Aviatrix",
    "~/Library/Logs/AviatrixVPNC",
    "~/Library/Preferences/org.pythonmac.unspecified.AviatrixVPNClient.plist",
    "~/Library/Saved Application State/org.pythonmac.unspecified.AviatrixVPNClient.savedState",
  ]
end
