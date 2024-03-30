cask "clearvpn" do
  version "3.0.0"
  sha256 :no_check

  url "https://dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/ClearVPN.dmg",
      verified: "dl.devmate.com/"
  name "ClearVPN"
  desc "One-tap VPN for secure online journeys"
  homepage "https://clearvpn.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.clearvpn.macos-site-ver.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ClearVPN.app"

  zap trash: [
    "~/Library/Caches/com.macpaw.clearvpn.macos-site-ver",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.clearvpn.macos-site-ver",
    "~/Library/HTTPStorages/com.macpaw.clearvpn.macos-site-ver",
    "~/Library/HTTPStorages/com.macpaw.clearvpn.macos-site-ver.binarycookies",
    "~/Library/Preferences/com.macpaw.clearvpn.macos-site-ver.plist",
    "~/Library/WebKit/com.macpaw.clearvpn.macos-site-ver",
  ]
end
