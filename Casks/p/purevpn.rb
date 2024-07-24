cask "purevpn" do
  version "9.22.0"
  sha256 :no_check

  url "https://dzglif4kkvz04.cloudfront.net/mac-2.0/packages/Production/PureVPN.pkg",
      verified: "dzglif4kkvz04.cloudfront.net/"
  name "PureVPN"
  desc "VPN client"
  homepage "https://www.purevpn.com/"

  livecheck do
    url "https://support.purevpn.com/mac-release-notes"
    regex(/>\s*Version\s*v?(\d+(?:\.\d+)+)\s*</i)
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
