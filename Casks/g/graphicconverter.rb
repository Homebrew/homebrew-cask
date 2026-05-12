cask "graphicconverter" do
  version "12.5.1,7231"
  sha256 "2a0aa9ff08ca549c3c3d2c348da14ee2cb6d756059875f56da5fa308a37937cb"

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
  depends_on :macos

  app "GraphicConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/Library/Application Support/GraphicConverter",
    "~/Library/Application Support/GraphicConverter",
    "~/Library/Caches/com.lemkesoft.graphicconverter*",
    "~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group",
  ]
end
