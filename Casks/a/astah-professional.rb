cask "astah-professional" do
  version "10.0.0,a1b9b1"
  sha256 "83f6b1ab4e9e2b2d2c6f01ae3ca9f73ebf946fb8e81b9de3a193c84c64beaf6a"

  url "https://cdn.change-vision.com/files/astah-professional-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah Professional"
  desc "Software modelling tool"
  homepage "https://astah.net/editions/professional"

  livecheck do
    url "https://astah.net/downloads/"
    regex(/astah[._-]professional[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on macos: ">= :catalina"

  pkg "astah professional ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.professional"

  zap trash: [
        "~/.astah/professional",
        "~/Library/Saved Application State/com.change-vision.astah.professional.savedState",
      ],
      rmdir: "~/.astah"
end
