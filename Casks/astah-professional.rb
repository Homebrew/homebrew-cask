cask "astah-professional" do
  version "9.0.0,1778f1"
  sha256 "7c43cc3f2ed289c0acd07035245f32e27b9535317a7abdafa9a2578245c01cd6"

  url "https://cdn.change-vision.com/files/astah-professional-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah Professional"
  desc "Software modeling tool"
  homepage "https://astah.net/editions/professional"

  livecheck do
    url "https://members.change-vision.com/download/files/astah_professional/latest/mac_pkg"
    regex(/astah[._-]professional[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  pkg "astah professional ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.professional"
end
