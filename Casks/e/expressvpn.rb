cask "expressvpn" do
  version "11.65.0.88733"
  sha256 "683f17d5dc8bdb661696a8e0f1a24ea39aaef88e73e901816efa582d70d21576"

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
