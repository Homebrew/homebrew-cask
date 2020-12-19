cask "aviatrix-vpn-client" do
  version "2.12.10,0.0.0"
  sha256 :no_check

  url "https://aviatrix-download.s3.amazonaws.com/AviatrixVPNClient/AVPNC_mac.pkg",
      verified: "aviatrix-download.s3.amazonaws.com/"
  appcast "https://docs.aviatrix.com/Downloads/samlclient.html"
  name "Aviatrix VPN Client"
  homepage "https://docs.aviatrix.com/Downloads/samlclient.html"

  pkg "AVPNC_mac.pkg"

  uninstall pkgutil:   "com.Aviatrix.VPNClient",
            delete:    "/Applications/Aviatrix VPN Client.app",
            launchctl: "aviatrix.vpn.client.rp.plist"
end
