cask "purevpn" do
  version "9.32.0"
  sha256 :no_check

  url "https://dzglif4kkvz04.cloudfront.net/mac-2.0/packages/Production/PureVPN.pkg",
      verified: "dzglif4kkvz04.cloudfront.net/"
  name "PureVPN"
  desc "VPN client"
  homepage "https://www.purevpn.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.purevpn.app.mac"]&.short_version
    end
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
