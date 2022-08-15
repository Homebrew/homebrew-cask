cask "mysteriumvpn" do
  version "10.13.2"
  sha256 "580dce596a2d0b47a569ca4414154e59930f4e3edfad53b586a2f37d0502b371"

  url "https://github.com/mysteriumnetwork/mysterium-vpn-desktop/releases/download/#{version}/MysteriumVPN-#{version}-universal.dmg",
      verified: "github.com/mysteriumnetwork/mysterium-vpn-desktop/"
  name "Mysterium VPN"
  desc "VPN client"
  homepage "https://www.mysteriumvpn.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MysteriumVPN.app"

  zap trash: [
    "~/.mysterium",
    "~/Library/Application Support/MysteriumVPN",
    "~/Library/Logs/MysteriumVPN",
    "~/Library/Preferences/network.mysterium.mysterium-vpn-desktop.plist",
    "~/Library/Saved Application State/network.mysterium.mysterium-vpn-desktop.savedState",
  ]
end
