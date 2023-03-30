cask "expressvpn" do
  version "11.25.0.74534"
  sha256 "d5173736e2558a00246ff0587055fd97e877a832df2e17c8998f1ce9be8a1aa0"

  url "https://www.expressvpn.works/clients/mac/expressvpn_mac_#{version}_release.pkg"
  name "ExpressVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://www.expressvpn.works/"

  livecheck do
    url "https://www.expressvpn.works/clients/latest/mac"
    strategy :header_match
  end

  auto_updates true

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
