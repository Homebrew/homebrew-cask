cask "graphicconverter" do
  version "11.4.2,4875"
  sha256 "54004bae57cede900e3d2674fe0eeaea480510eb9588f794f08a9604dfa0295f"

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
