cask "clearvpn" do
  version "3.5.0,202610.30.1622,1793377924"
  sha256 "fdb9a6e6d31e1dc580a357b0c410a7e49052a0c10de01672ede4f3ee9e083727"

  url "https://dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/#{version.csv.second}/#{version.csv.third}/ClearVPN-#{version.csv.second}.zip"
  name "ClearVPN"
  desc "VPN client"
  homepage "https://clearvpn.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.clearvpn.macos-site-ver.xml"
    regex(%r{macos[._-]site[._-]ver/\d+\.\d+\.\d+/(\d+)/ClearVPN}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "ClearVPN.app"

  uninstall launchctl: "com.macpaw.clearvpn.macos-site-ver.security-monitor"

  zap trash: [
    "~/Library/Application Scripts/com.macpaw.clearvpn.macos-site-ver.widget",
    "~/Library/Application Scripts/S8EX82NJP6.com.macpaw.clearvpn.macos-site-ver",
    "~/Library/Caches/com.macpaw.clearvpn.macos-site-ver",
    "~/Library/Containers/com.macpaw.clearvpn.macos-site-ver.widget",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.clearvpn.macos-site-ver",
    "~/Library/HTTPStorages/com.macpaw.clearvpn.macos-site-ver*",
    "~/Library/Preferences/com.macpaw.clearvpn.macos-site-ver.plist",
    "~/Library/WebKit/com.macpaw.clearvpn.macos-site-ver",
  ]
end
