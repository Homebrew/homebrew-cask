cask "expressvpn" do
  version "11.57.0.82155"
  sha256 "4313c8ec67113359b717c638d1bb67f31582fd445b6bcc6ef0231dc42f0ec216"

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
