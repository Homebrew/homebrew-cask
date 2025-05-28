cask "mullvad-vpn@beta" do
  version "2025.6"
  sha256 "c2f5899b53f8385d86e0fe6facd3cf3572db71635120e216d3e8ddaf0999b991"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://api.mullvad.net/app/releases/macos.json"
    strategy :json do |json|
      json.dig("signed", "releases")&.map { |release| release["version"] }
    end
  end

  conflicts_with cask: "mullvadvpn"
  depends_on macos: ">= :ventura"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall launchctl: "net.mullvad.daemon",
            quit:      "net.mullvad.vpn",
            pkgutil:   "net.mullvad.vpn"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.mullvad.vpn.sfl*",
    "~/Library/Application Support/Mullvad VPN",
    "~/Library/Logs/Mullvad VPN",
    "~/Library/Preferences/net.mullvad.vpn.helper.plist",
    "~/Library/Preferences/net.mullvad.vpn.plist",
  ]
end
