cask "astah-uml" do
  version "9.1.0,448a59"
  sha256 "8980c7f02a337353992f41b387b292226c267fdb80386d03db1376a59169d451"

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
