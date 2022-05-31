cask "graphicconverter" do
  version "11.6.1,5515"
  sha256 "39b9b6c882c8df0fb0ca0e8108a400e8e58088c3c3b9bc5236c7ca30ce195320"

  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.csv.second}.zip",
      verified: "lemkesoft.info/"
  name "GraphicConverter"
  desc "For browsing, enhancing and converting images"
  homepage "https://www.lemkesoft.de/en/products/graphicconverter/"

  # TODO: Return to using the `Sparkle` strategy once all `item`s are passed
  # into the `strategy` and we can omit items using the `beta` channel.
  livecheck do
    url "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
    regex(/<title>Version\s+(\d+(?:\.\d+)+)\s+Build\s+(\d+)(?:<|\s+\()/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  app "GraphicConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/Library/Application Support/GraphicConverter",
    "~/Library/Application Support/GraphicConverter",
    "~/Library/Caches/com.lemkesoft.graphicconverter*",
    "~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group",
  ]
end
