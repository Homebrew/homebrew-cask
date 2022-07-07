cask "mysteriumvpn" do
  version "10.11.2"
  sha256 "6da6f5450d70fe163ebc1f91d08b8fab945856fe51bece068c206c189de8b315"

  url "https://github.com/mysteriumnetwork/mysterium-vpn-desktop/releases/download/#{version}/MysteriumVPN-#{version}.dmg",
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
