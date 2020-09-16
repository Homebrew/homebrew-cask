cask "avast-secureline-vpn" do
  version :latest
  sha256 :no_check

  url "http://mac.sl.d.avast.com/mac/avast_secureline.dmg"
  name "Avast SecureLine VPN"
  homepage "https://www.avast.com/secureline-vpn#mac"

  pkg "Avast SecureLine VPN.pkg"

  uninstall script: {
    executable: "/Library/Application Support/AvastSecureLine/hub/uninstall.sh",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/AvastHUB",
    "/Library/Application Support/AvastSecureLine",
    "~/Library/Application Support/AvastSecureLine",
    "~/Library/Cookies/com.avast.osx.secureline.binarycookies",
    "~/Library/Caches/com.avast.osx.secureline",
    "~/Library/Group Containers/*.com.avast.osx.secureline*",
    "~/Library/Preferences/*.com.avast.osx.secureline.plist",
    "~/Library/Group Containers/*.group.com.avast.osx",
  ]
end
