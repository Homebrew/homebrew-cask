cask "ipvanish-vpn" do
  version "4.10.1,143840"
  sha256 "76020c8938eef3d0df483064022e4c7f43a427ac75384858eb569d666ab9e60b"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.csv.first}_#{version.csv.second}.zip"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates_V#{version.major}.xml"
    regex(/IPVanish[._-]v?(\d+(?:\.\d+)+)[._-](\d+)/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        match_data = item.url&.match(regex)
        next if match_data.blank?

        match_data.captures.join(",")
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "IPVanish VPN.app"

  zap trash: [
    "~/Library/Application Support/com.ipvanish.IPVanish",
    "~/Library/Caches/com.ipvanish.IPVanish",
    "~/Library/HTTPStorages/com.ipvanish.IPVanish",
    "~/Library/Logs/IPVanish VPN",
    "~/Library/Preferences/com.ipvanish.IPVanish.plist",
    "~/Library/Saved Application State/com.ipvanish.IPVanish.savedState",
  ]
end
