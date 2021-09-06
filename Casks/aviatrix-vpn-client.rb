cask "aviatrix-vpn-client" do
  version "2.14.14"
  sha256 :no_check

  url "https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg",
      verified: "aviatrix-download.s3.amazonaws.com/"
  name "Aviatrix VPN Client"
  desc "VPN client that provides SAML authentication"
  homepage "https://docs.aviatrix.com/Downloads/samlclient.html"

  livecheck do
    url :homepage
    regex(/>\s*Latest\s*version:\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "AVPNC_mac.pkg"

  uninstall pkgutil:   "com.Aviatrix.VPNClient",
            delete:    "/Applications/Aviatrix VPN Client.app",
            launchctl: "aviatrix.vpn.client.rp.plist"
end
