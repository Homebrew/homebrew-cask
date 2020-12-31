cask "purevpn" do
  version "3.0.19,725"
  sha256 :no_check

  url "https://purevpn-dialer-assets.s3.amazonaws.com/mac-2.0/packages/Production/PureVPN.pkg",
      verified: "purevpn-dialer-assets.s3.amazonaws.com/"
  name "PureVPN"
  homepage "https://www.purevpn.com/"

  pkg "PureVPN.pkg"

  uninstall quit:    "com.purevpn.app.mac",
            pkgutil: "com.purevpn.mac.installer"
end
