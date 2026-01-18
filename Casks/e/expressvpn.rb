cask "expressvpn" do
  version "12.0.2.11960"
  sha256 "4fa346578f5819d908309d431cd9507063a7065ce42d37ea5e4048713f3057db"

  url "https://www.expressvpn.works/clients/mac/expressvpn-macos-universal-#{version}_release.zip"
  name "ExpressVPN"
  desc "VPN client for secure and private internet access"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://www.expressvpn.works/vpn-download/vpn-mac"
    regex(/expressvpn-macos-universal-(\d+(?:\.\d+)+)_release\.zip/i)
  end

  installer manual: "ExpressVPN Installer.app"

  uninstall do
    quit      "com.expressvpn.ExpressVPN"
    launchctl "com.expressvpn.ExpressVPN.helper"
    kext      "com.expressvpn.tun"
    pkgutil   "com.expressvpn.ExpressVPN"
    delete    [
      "/Library/Application Support/ExpressVPN",
      "/Library/LaunchDaemons/com.expressvpn.ExpressVPN.helper.plist",
    ]
  end

  zap trash: [
    "~/Library/Application Support/ExpressVPN",
    "~/Library/Logs/ExpressVPN",
    "~/Library/Preferences/com.expressvpn.ExpressVPN.plist",
  ]
end
