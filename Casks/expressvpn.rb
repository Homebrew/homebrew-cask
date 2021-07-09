cask "expressvpn" do
  version "10.3.1.25"
  sha256 "fe332dd5425a8c149f15be40657a96f4f4db5ae222e1988ee4113b2af3db7396"

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
