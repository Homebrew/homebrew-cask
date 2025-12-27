cask "astah-uml" do
  version "11.0.0,ba221e"
  sha256 "dc545402dd56ccfd94eb5a837233eb0b185bd7b5b7041b4bc11492cf6683d393"

  url "https://cdn.change-vision.com/files/astah-uml-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs-aarch64.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah UML"
  desc "UML diagramming tool with mind mapping"
  homepage "https://astah.net/products/astah-uml/"

  livecheck do
    url "https://members.change-vision.com/download/files/astah_UML/latest/mac_pkg"
    regex(/astah[._-]uml[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs.*?\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on arch: :arm64

  pkg "astah uml aarch64 ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.uml"

  zap trash: "~/Library/Preferences/com.change-vision.astah.uml.plist"
end
