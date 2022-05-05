cask "astah-uml" do
  version "8.5.0,39c620"
  sha256 "23e7f4bc00039a7d6abcd1fa2ce5c16afe6f13527eae0715200fb17ddb4b632b"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah UML"
  desc "UML diagramming tool with mind mapping"
  homepage "https://astah.net/products/astah-uml/"

  livecheck do
    url "https://astah.net/download"
    strategy :page_match do |page|
      page.scan(/astah[._-]uml[._-]v?(\d+(?:_\d+)+)[._-](\h+)[._-]MacOs\.dmg/i).map do |match|
        "#{match[0].tr("_", ".")},#{match[1]}"
      end
    end
  end

  pkg "astah uml ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astahuml.astahUML.pkg"

  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
