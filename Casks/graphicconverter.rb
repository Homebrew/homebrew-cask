cask "graphicconverter" do
  version "11.2.2,4491"
  sha256 "5114c0de4db7bee45c136689aa770a382704037492bc62f416d0bfb527ab6c3f"

  # lemkesoft.info/ was verified as official when first introduced to the cask
  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip"
  appcast "https://www.lemkesoft.info/sparkle/graphicconverter/graphicconverter#{version.major}.xml"
  name "GraphicConverter"
  desc "For browsing, enhancing and converting images"
  homepage "https://www.lemkesoft.de/en/products/graphicconverter/"

  auto_updates true

  app "GraphicConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/Library/Application Support/GraphicConverter",
    "~/Library/Application Support/GraphicConverter",
    "~/Library/Group Containers/*.com.lemkesoft.graphicconverter*.group",
    "~/Library/Caches/com.lemkesoft.graphicconverter*",
  ]
end
