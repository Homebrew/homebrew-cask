cask "graphicconverter" do
  version "11.3.2,4637"
  sha256 "ae6a862519cca60bcc82c7426a4aae2bcdfc2f2ba1fd7f971ceaab8292ee103b"

  url "https://www.lemkesoft.info/files/graphicconverter/gc#{version.major}_build#{version.after_comma}.zip",
      verified: "lemkesoft.info/"
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
