cask "clearvpn" do
  version "3.0.2,202404.02.2008,1712588701"
  sha256 "528f83b416c8322a90565bb4d6d846559883c6e2bab49caac71e693a7d65a14c"

  url "https://dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/#{version.csv.second}/#{version.csv.third}/ClearVPN-#{version.csv.second}.zip",
      verified: "dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/"
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
  depends_on macos: ">= :big_sur"

  app "ClearVPN.app"

  zap trash: [
    "~/Library/Caches/com.macpaw.clearvpn.macos-site-ver",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.clearvpn.macos-site-ver",
    "~/Library/HTTPStorages/com.macpaw.clearvpn.macos-site-ver*",
    "~/Library/Preferences/com.macpaw.clearvpn.macos-site-ver.plist",
    "~/Library/WebKit/com.macpaw.clearvpn.macos-site-ver",
  ]
end
