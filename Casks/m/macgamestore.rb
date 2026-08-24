cask "macgamestore" do
  version "5.7.13,7046"
  sha256 "4eb28e9b27ccc80fd652958d7a3812fd48cc643052f7b26b15409e34f6862a5f"

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
    "~/Library/Application Support/MacGameStore.com",
  ]
end
