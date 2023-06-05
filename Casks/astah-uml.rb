cask "astah-uml" do
  version "9.0.0,1778f1"
  sha256 "88a44841fc0db89b6984c498cbaf9f248a0d2b0ed72c3ad5070ecbee2c20a3c2"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah UML"
  desc "UML diagramming tool with mind mapping"
  homepage "https://astah.net/products/astah-uml/"

  livecheck do
    url "https://members.change-vision.com/download/files/astah_UML/latest/mac_pkg"
    regex(/astah[._-]uml[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  pkg "astah uml ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.uml"

  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
