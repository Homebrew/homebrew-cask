cask "clearvpn" do
  version "3.0.0,202403.21.1808,1711062454"
  sha256 "8b20eba3df6e0109aee4f041db52007d0c5672b78599ecdd9e3d1140b123a835"

  url "https://dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/#{version.csv.second}/#{version.csv.third}/ClearVPN-#{version.csv.second}.zip",
      verified: "dl.devmate.com/"
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
