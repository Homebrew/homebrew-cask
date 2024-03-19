cask "hma-vpn" do
  version :latest
  sha256 :no_check

  url "https://s-mac-sl.avcdn.net/macosx/privax/HMA-VPN.dmg",
      verified: "s-mac-sl.avcdn.net/"
  name "HMA! VPN"
  desc "VPN program from Hide My Ass"
  homepage "https://www.hidemyass.com/index.html"

  installer manual: "Install HMA VPN.pkg"

  uninstall launchctl: "com.privax.osx.provpn.helper",
            quit:      "com.privax.osx.provpn.helper",
            delete:    [
              "/Applications/HMA VPN.app",
              "/Library/PrivilegedHelperTools/com.privax.osx.provpn.helper",
            ]

  zap trash: [
    "~/Library/Preferences/com.privax.osx.provpn.helper.plist",
    "~/Library/Saved Application State/com.privax.osx.provpn.helper.savedState",
  ]
end
