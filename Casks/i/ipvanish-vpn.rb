cask "ipvanish-vpn" do
  version "5.1.2,164843"
  sha256 "1edfdb0baaf60bfcde3ba6e5cec31c81a2787e899b0c788a00e3ab054c3b90aa"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.csv.first}_#{version.csv.second}.zip"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates_V4.xml"
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
  depends_on macos: :sonoma

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
