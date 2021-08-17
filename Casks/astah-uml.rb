cask "astah-uml" do
  version "8.4.0,8fdff6"
  sha256 "0015a09556c281c76c40dc99476bc75be8e41e990ecde12e2e2ffab1fb4c7cd6"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg",
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

  pkg "astah uml ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astahuml.astahUML.pkg"

  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
