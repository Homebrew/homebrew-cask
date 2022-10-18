cask "mysteriumvpn" do
  version "10.13.3"
  sha256 "dba4dab1ae90cee21d79db6fcf6d5cad5066bf6f25f8063504904c008adbe100"

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
