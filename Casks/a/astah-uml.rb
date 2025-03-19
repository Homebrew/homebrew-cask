cask "astah-uml" do
  version "10.1.0,9ceee1"
  sha256 "919592fdecfc26d1e2ebd798960f9e1bacd013145036552f703aeec2c4b27fdf"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah UML"
  desc "UML diagramming tool with mind mapping"
  homepage "https://astah.net/products/astah-uml/"

  livecheck do
    url "https://astah.net/support/astah-uml/system-requirements/"
    regex(/astah[._-]uml[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  pkg "astah uml ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.uml"

  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
