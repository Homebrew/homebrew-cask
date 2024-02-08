cask "aviatrix-vpn-client" do
  version "2.16.42"
  sha256 :no_check

  url "https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg",
      verified: "aviatrix-download.s3.amazonaws.com/"
  name "Aviatrix VPN Client"
  desc "VPN client that provides SAML authentication"
  homepage "https://docs.aviatrix.com/Downloads/samlclient.html"

  livecheck do
    url "https://read.docs.aviatrix.com/HowTos/Aviatrix_VPN_Client_Release_Notes.html"
    regex(/strong>(\d+(?:\.\d+)+)/i)
  end

  pkg "AVPNC_mac.pkg"

  uninstall launchctl: "aviatrix.vpn.client.rp.plist",
            pkgutil:   "com.Aviatrix.VPNClient",
            delete:    "/Applications/Aviatrix VPN Client.app"
end
