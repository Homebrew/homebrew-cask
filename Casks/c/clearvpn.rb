cask "clearvpn" do
  version "3.2.0,202411.08.1453,1731071688"
  sha256 "822cd1d571058c0cb47a33320c4917c08bd9f7f4eb230d2a892c83826c21d40e"

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
