cask "surfshark" do
  version "4.14.0,2225"
  sha256 "b6d5f7730071fcfed4470ad03e32f6959d29778e564b579b11794a588dec50c0"

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
