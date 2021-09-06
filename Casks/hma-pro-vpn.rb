cask "hma-pro-vpn" do
  version :latest
  sha256 :no_check

  url "https://s-mac-sl.avcdn.net/macosx/privax/HMA-Pro-VPN.dmg",
      verified: "s-mac-sl.avcdn.net/"
  name "HMA! Pro VPN"
  name "HideMyAss! Pro VPN"
  homepage "https://www.hidemyass.com/index"

  installer manual: "Install HMA! Pro VPN.app"

  uninstall launchctl: "com.privax.hmaprovpn.helper",
            quit:      "com.privax.hmaprovpn.helper",
            delete:    [
              "/Applications/HMA! Pro VPN.app",
              "/Library/PrivilegedHelperTools/com.privax.hmaprovpn.helper",
            ]

  zap trash: [
    "~/Library/Preferences/com.privax.hmaprovpn.plist",
    "~/Library/Saved Application State/com.privax.hmaprovpn.savedState",
  ]
end
