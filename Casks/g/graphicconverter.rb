cask "graphicconverter" do
  version "12.3.1,6723"
  sha256 "680075bdfe0ab4cb671b1233e8e4fac2f5dc40e3ed68a276cdf04d08753df571"

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
