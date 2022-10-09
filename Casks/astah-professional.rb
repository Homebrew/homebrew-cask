cask "astah-professional" do
  version "8.5.0,39c620"
  sha256 "84310f7c69dbc4eef2a3a8f815ba10ff919c26b8fa82fe8b3c7831d4dfb94153"

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

  uninstall pkgutil: "com.change-vision.astahprofessional.astahprofessional.pkg"
end
