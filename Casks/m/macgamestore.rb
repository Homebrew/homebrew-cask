cask "macgamestore" do
  version "5.8.0,7050"
  sha256 "8a16169c6afb1a057966d94db939a14500089d507f479916a214b644cac64a5e"

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
