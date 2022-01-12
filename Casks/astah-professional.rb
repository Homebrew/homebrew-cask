cask "astah-professional" do
  version "8.4.1,827bdf"
  sha256 "8335eb366284cbd5b99be7c0e47a5334b37901c489fd20c4ee43b8f9afb89cb3"

  url "https://cdn.change-vision.com/files/astah-professional-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah Professional"
  desc "Software modeling tool"
  homepage "https://astah.net/editions/professional"

  livecheck do
    url "https://astah.net/download"
    strategy :page_match do |page|
      page.scan(/astah[._-]professional[._-]v?(\d+(?:_\d+)+)[._-](\h+)[._-]MacOs\.dmg/i).map do |match|
        "#{match[0].tr("_", ".")},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astahprofessional.astahprofessional.pkg"
end
