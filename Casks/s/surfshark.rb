cask "surfshark" do
  version "4.16.0,2396"
  sha256 "ec6e4a4c210fc3a791e35c1c9686309e513563a74e6a6fb680db58262a809e0a"

  url "https://downloads.surfshark.com/macOS/stable/#{version.csv.first}/#{version.csv.second}/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  livecheck do
    url "https://downloads.surfshark.com/macOS/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Surfshark.app"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos*",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_*.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos*",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
  ]
end
