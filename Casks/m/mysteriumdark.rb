cask "mysteriumdark" do
  version "10.17.10"
  sha256 "268aa1d0695aa4d6c65341c99902e0aeae85aadd8539f30aadb71e7c78057143"

  url "https://github.com/mysteriumnetwork/mysterium-vpn-desktop/releases/download/#{version}/MysteriumDark-#{version}-universal.dmg",
      verified: "github.com/mysteriumnetwork/mysterium-vpn-desktop/"
  name "Mysterium VPN"
  desc "VPN client"
  homepage "https://www.mysteriumvpn.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "MysteriumDark.app"

  zap trash: [
    "~/.mysterium",
    "~/Library/Application Support/MysteriumVPN",
    "~/Library/Logs/MysteriumVPN",
    "~/Library/Preferences/network.mysterium.mysterium-vpn-desktop.plist",
    "~/Library/Saved Application State/network.mysterium.mysterium-vpn-desktop.savedState",
  ]
end
