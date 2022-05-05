cask "mysteriumvpn" do
  version "10.9.0"
  sha256 "da4fd2e6c8ac3deaa3221ef30fb7a28321dcf5456e22733d5109f4c9f7b3a647"

  url "https://github.com/mysteriumnetwork/mysterium-vpn-desktop/releases/download/#{version}/MysteriumVPN-#{version}.dmg",
      verified: "github.com/mysteriumnetwork/mysterium-vpn-desktop/"
  name "Mysterium VPN"
  desc "VPN client"
  homepage "https://www.mysteriumvpn.com/"

  app "MysteriumVPN.app"

  zap trash: [
    "~/.mysterium",
    "~/Library/Application Support/MysteriumVPN",
    "~/Library/Logs/MysteriumVPN",
    "~/Library/Preferences/network.mysterium.mysterium-vpn-desktop.plist",
    "~/Library/Saved Application State/network.mysterium.mysterium-vpn-desktop.savedState",
  ]
end
