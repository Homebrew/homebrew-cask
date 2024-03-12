cask "expressvpn" do
  version "11.52.0.80855"
  sha256 "59f65f7a6eb3261525783cb0ce379e0e2b295a0a2e97dd9ed9e5463a7a914451"

  url "https://www.expressvpn.works/clients/mac/expressvpn_mac_#{version}_release.pkg"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://www.expressvpn.works/clients/latest/mac"
    strategy :header_match
  end

  pkg "expressvpn_mac_#{version}_release.pkg"

  uninstall launchctl: "com.expressvpn.ExpressVPN.agent",
            script:    {
              executable: "/Applications/ExpressVPN.app/Contents/Resources/uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil:   "com.expressvpn.ExpressVPN"

  zap trash: [
    "/Library/Application Support/com.expressvpn.ExpressVPN",
    "/Library/LaunchDaemons/com.expressvpn.expressvpnd.plist",
    "~/Library/Application Support/com.expressvpn.ExpressVPN",
    "~/Library/HTTPStorages/com.expressvpn.ExpressVPN",
    "~/Library/Logs/ExpressVPN",
    "~/Library/Preferences/com.expressvpn.ExpressVPN.plist",
  ]
end
