cask "surfshark" do
  version :latest
  sha256 :no_check

  url "https://downloads.surfshark.com/macOS/latest/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  app "Surfshark.app"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_DF2D8DF5-283D-5FFF-9DBF-511FBB24AE9D.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos",
    "~/Library/Containers/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "~/Library/Containers/com.surfshark.vpnclient.macos.launchAgent",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
    "/var/db/receipts/com.surfshark.vpnclient.macos.bom",
    "/var/db/receipts/com.surfshark.vpnclient.macos.plist",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/C/com.surfshark.vpnclient.macos",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/C/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/C/com.surfshark.vpnclient.macos.launchAgent",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/T/com.surfshark.vpnclient.macos",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/T/com.surfshark.vpnclient.macos.PacktTunnel-OpenVPN",
    "/var/folders/rn/y6f8rlb57rbdscfs4x2s7y5m0000gn/T/com.surfshark.vpnclient.macos.launchAgent",
  ]
end
