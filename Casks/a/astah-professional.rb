cask "astah-professional" do
  version "11.0.0,ba221e"
  sha256 "220f7057cef479f7fb28841bb22ae7552771ab3c5295e471719c1ac9912590d2"

  url "https://cdn.change-vision.com/files/astah-professional-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-MacOs-aarch64.dmg",
      verified: "cdn.change-vision.com/files/"
  name "Change Vision Astah Professional"
  desc "Software modelling tool"
  homepage "https://astah.net/editions/professional"

  livecheck do
    url "https://members.change-vision.com/download/files/astah_professional/latest/mac_pkg"
    regex(/astah[._-]professional[._-]v?(\d+(?:[._]\d+)+)[._-](\h+)[._-]MacOs.*?\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on arch: :arm64

  pkg "astah professional aarch64 ver #{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astah.professional"

  zap trash: [
        "~/.astah/professional",
        "~/Library/Saved Application State/com.change-vision.astah.professional.savedState",
      ],
      rmdir: "~/.astah"
end
