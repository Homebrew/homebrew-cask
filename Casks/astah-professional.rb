cask "astah-professional" do
  version "8.3.0,b9757d"
  sha256 "342766520cab8d55440bd07e947267fd4363347ba5d26d6390957fc3287790ff"

  url "https://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg",
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
