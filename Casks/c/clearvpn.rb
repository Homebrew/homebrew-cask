cask "clearvpn" do
  version "3.3.1,202604.06.1417,1775485695"
  sha256 "0f35924c826f963c13f4bcd10ab9919476fd0c5edacbbd5f23b744903e818116"

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
  depends_on macos: ">= :ventura"

  app "ClearVPN.app"

  zap trash: [
    "~/Library/Caches/com.macpaw.clearvpn.macos-site-ver",
    "~/Library/Group Containers/S8EX82NJP6.com.macpaw.clearvpn.macos-site-ver",
    "~/Library/HTTPStorages/com.macpaw.clearvpn.macos-site-ver*",
    "~/Library/Preferences/com.macpaw.clearvpn.macos-site-ver.plist",
    "~/Library/WebKit/com.macpaw.clearvpn.macos-site-ver",
  ]
end
