cask "softmaker-freeoffice" do
  version "2024,1230"
  sha256 :no_check # required as upstream package is updated in place

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.csv.first}.pkg",
      verified: "softmaker.net/"
  name "SoftMaker FreeOffice"
  desc "Office suite"
  homepage "https://www.freeoffice.com/"

  livecheck do
    url "https://www.freeoffice.com/en/download/servicepacks"
    regex(/softmaker[._-]freeoffice[._-](\d+(?:\.\d+)*)\.pkg.*?Revision\s*(\d+)\s*</im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "softmaker-freeoffice-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.csv.first}"

  zap trash: "~/Library/Saved Application State/SoftMaker*"

  caveats do
    requires_rosetta
  end
end
