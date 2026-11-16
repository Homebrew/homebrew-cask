cask "macgamestore" do
  version "5.8.3,7055"
  sha256 "cfce8cd6a8042914f3fb545f234be29ce9fc9671f94dcb40abb346ae793a7509"

  url "https://www.macgamestore.com/api_clientapp/clientupdates/public/core#{version.csv.second[0]}/MacGameStore_#{version.csv.first}_#{version.csv.second}.zip"
  name "MacGameStore"
  desc "Buy, download, and play your games"
  homepage "https://www.macgamestore.com/app/"

  # This is a Sparkle feed but upstream uses a non-standard approach to
  # identify unstable versions that the `Sparkle` strategy doesn't handle, so
  # we have to use the `Xml` strategy instead.
  livecheck do
    url "https://www.macgamestore.com/api_clientapp/clientupdates/public/update-2021.xml"
    regex(/MacGameStore[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.zip/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//item").map do |item|
        next if item.elements["sparkle:isBetaBuild"]&.text&.include?("1")

        url = item.elements["enclosure"]&.attributes&.[]("url")
        match = url.match(regex) if url
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "MacGameStore.app"

  zap trash: [
    "/Applications/MacGameStore",
    "~/Library/Application Support/.macgamestore",
    "~/Library/Application Support/MacGameStore.com",
    "~/Library/Caches/com.macgamestore.Client2",
    "~/Library/Preferences/com.macgamestore.Client2.plist",
  ]
end
