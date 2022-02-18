cask "mysteriumvpn" do
  version "10.5.3"
  sha256 "a05b1803b2eaca44d54067f9ee2c0f76b4d5baa2a305e9805c773c4b4d65de6c"

  url "https://github.com/mysteriumnetwork/mysterium-vpn-desktop/releases/download/#{version}/MysteriumVPN-#{version}.dmg",
      verified: "github.com/mysteriumnetwork/mysterium-vpn-desktop/"
  name "Mysterium VPN"
  desc "Safe, secure and affordable decentralized VPN"
  homepage "https://www.mysteriumvpn.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MysteriumVPN.app"

  zap trash: [
    "~/Library/Logs/MysteriumVPN",
    "~/.mysterium",
    "/var/log/myst_supervisor.log",
    "~/Library/Preferences/network.mysterium.mysterium-vpn-desktop.plist",
    "~/Library/Saved Application State/network.mysterium.mysterium-vpn-desktop.savedState",
    "~/Library/Application Support/MysteriumVPN",
  ]
end
