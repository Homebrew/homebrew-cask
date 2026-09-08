cask "aviatrix-vpn-client" do
  version "3.0.2"
  sha256 :no_check

  url "https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg"
  name "Aviatrix VPN Client"
  desc "VPN client that provides SAML authentication"
  homepage "https://docs.aviatrix.com/docs/enterprise/latest/guides/uservpn/user-vpn-client-download"

  livecheck do
    url "https://docs.aviatrix.com/docs/enterprise/latest/reference/release-notices/release-notes/vpn-client"
    regex(/href=.*?aviatrix[._-]vpn[._-]client[._-]v?(\d+(?:[.-]\d+)+)[ "<]/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on macos: :big_sur

  pkg "AVPNC_mac.pkg"

  uninstall launchctl: "aviatrix.vpn.client.rp",
            pkgutil:   "com.Aviatrix.VPNClient",
            delete:    "/Applications/Aviatrix VPN Client.app"

  zap trash: [
    "/Library/Application Support/Aviatrix VPN Client",
    "~/Library/Aviatrix",
    "~/Library/Logs/AviatrixVPNC",
    "~/Library/Preferences/org.pythonmac.unspecified.AviatrixVPNClient.plist",
    "~/Library/Saved Application State/org.pythonmac.unspecified.AviatrixVPNClient.savedState",
  ]
end
