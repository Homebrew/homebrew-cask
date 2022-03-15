cask "purevpn" do
  version "8.0.6,843"
  sha256 :no_check

  url "https://purevpn-dialer-assets.s3.amazonaws.com/mac-2.0/packages/Production/PureVPN.pkg",
      verified: "purevpn-dialer-assets.s3.amazonaws.com/"
  name "PureVPN"
  desc "VPN client"
  homepage "https://www.purevpn.com/"

  pkg "PureVPN.pkg"

  uninstall quit:    "com.purevpn.app.mac",
            pkgutil: "com.purevpn.mac.installer"
end
