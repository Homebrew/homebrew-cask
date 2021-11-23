cask "expressvpn" do
  version "10.9.0.6"
  sha256 "83598158715fe649b5208b734f7817c9add3ff8b43ca3e4810f195ec3699b20a"

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
              executable: "#{appdir}/ExpressVPN.app/Contents/Resources/uninstall.tool",
              input:      ["Yes"],
              sudo:       true,
            },
            pkgutil:   "com.expressvpn.ExpressVPN"
end
