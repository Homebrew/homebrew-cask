cask "surfshark" do
  version "4.30.2,4650"
  sha256 "fbdb8689b9e054b8d71983ba051af4f8c5dab08ad08212a7f27400731fa3476f"

  url "https://downloads.surfshark.com/macOS/stable/#{version.csv.first}/#{version.csv.second}/Surfshark.dmg"
  name "Surfshark"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://surfshark.com/"

  livecheck do
    url "https://downloads.surfshark.com/macOS/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Surfshark.app"

  uninstall launchctl: "com.surfshark.vpnclient.macos.direct.launchAgent"

  zap trash: [
    "~/Library/Application Scripts/com.surfshark.vpnclient.macos*",
    "~/Library/Application Support/CrashReporter/Surfshark.OpenVPN_*.plist",
    "~/Library/Containers/com.surfshark.vpnclient.macos*",
    "~/Library/Group Containers/YHUG37CKN8.com.surfshark.vpn",
    "~/Library/Saved Application State/com.surfshark.vpnclient.macos.savedState",
  ]
end
