cask "graphicconverter" do
  version "11.3.1,4634"
  sha256 "3b24baa2ba9662837453d1bc2cd6c7a128070a083ac4bc2c17f665aadd1d9211"

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
