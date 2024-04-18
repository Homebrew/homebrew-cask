cask "graphicconverter" do
  version "12.1.1,6485"
  sha256 "3b3f988eeb5c9303bbd3cb4a1cb22ef3b9cdef430ad2a461254dc7fb16c11a1d"

  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.csv.second}.zip",
      verified: "lemkesoft.info/"
  name "GraphicConverter"
  desc "For browsing, enhancing and converting images"
  homepage "https://www.lemkesoft.de/en/products/graphicconverter/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "GraphicConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/Library/Application Support/GraphicConverter",
    "~/Library/Application Support/GraphicConverter",
    "~/Library/Caches/com.lemkesoft.graphicconverter*",
    "~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group",
  ]
end
