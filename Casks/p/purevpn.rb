cask "purevpn" do
  version "9.14.0,12"
  sha256 :no_check

  url "https://purevpn-dialer-assets.s3.amazonaws.com/mac-2.0/packages/Production/PureVPN.pkg",
      verified: "purevpn-dialer-assets.s3.amazonaws.com/"
  name "PureVPN"
  desc "VPN client"
  homepage "https://www.purevpn.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "PureVPN.pkg"

  uninstall quit:    "com.purevpn.app.mac",
            pkgutil: "com.purevpn.mac.installer"

  zap trash: [
    "~/Library/Application Support/com.purevpn.app.mac",
    "~/Library/Caches/com.purevpn.app.mac",
    "~/Library/HTTPStorages/com.purevpn.app.mac",
    "~/Library/HTTPStorages/com.purevpn.app.mac.binarycookies",
    "~/Library/Preferences/com.purevpn.app.mac.plist",
    "~/Library/Saved Application State/com.purevpn.app.mac.savedState",
  ]
end
