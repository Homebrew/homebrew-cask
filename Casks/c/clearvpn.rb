cask "clearvpn" do
  version "3.4.6,202610.17.0457,1792213554"
  sha256 "c9c2623f636df452981851ea03ac52dc523923124574c8b9d83920b51aec8914"

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
