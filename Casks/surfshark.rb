cask "surfshark" do
  version "3.13.0,1076"
  sha256 :no_check

  url "https://downloads.surfshark.com/macOS/latest/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Surfshark.app"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_*.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Containers/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Containers/com.surfshark.vpnclient.macos",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
  ]
end
