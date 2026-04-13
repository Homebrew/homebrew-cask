cask "ipvanish-vpn" do
  version "5.0.1,155743"
  sha256 "ac180d5974c251973a60b9810cdcc112da9b79b24430ad30db4670fc21357b9c"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.csv.first}_#{version.csv.second}.zip"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates_V#{version.major}.xml"
    regex(/IPVanish[._-]v?(\d+(?:\.\d+)+)[._-](\d+)/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next if item.channel != "release"

        match = item.url&.match(regex)
        next if match.blank?

        match.captures.join(",")
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
