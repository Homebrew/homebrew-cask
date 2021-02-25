cask "graphicconverter" do
  version "11.4,4804"
  sha256 "6d292b4fa46878a1806ac4af1bace5b9738af3951f4c5e91ff4442509b759d25"

  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip",
      verified: "lemkesoft.info/"
  name "GraphicConverter"
  desc "For browsing, enhancing and converting images"
  homepage "https://www.lemkesoft.de/en/products/graphicconverter/"

  livecheck do
    url "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "GraphicConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/Library/Application Support/GraphicConverter",
    "~/Library/Application Support/GraphicConverter",
    "~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group",
    "~/Library/Caches/com.lemkesoft.graphicconverter*",
  ]
end
