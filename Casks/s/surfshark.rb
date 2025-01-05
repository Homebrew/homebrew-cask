cask "surfshark" do
  version "4.16.2,2434"
  sha256 "ffb69fd40bbf692430535b0e17a9df333a970c0832ef2bfab68c05739947bd81"

  url "https://downloads.surfshark.com/macOS/stable/#{version.csv.first}/#{version.csv.second}/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  livecheck do
    url "https://downloads.surfshark.com/macOS/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Surfshark.app"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos*",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_*.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos*",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
  ]
end
