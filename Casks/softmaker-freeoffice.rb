cask "softmaker-freeoffice" do
  version "2021,1046"
  sha256 :no_check # required as upstream package is updated in place

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.csv.first}.pkg",
      verified: "softmaker.net/"
  name "SoftMaker FreeOffice"
  desc "Office suite"
  homepage "https://www.freeoffice.com/"

  livecheck do
    url "https://www.freeoffice.com/en/download/servicepacks"
    strategy :page_match do |page|
      match = page.match(/softmaker[._-]freeoffice[._-](\d+(?:\.\d+)*)\.pkg.*?Revision\s*(\d+)\s*</im)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "softmaker-freeoffice-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.csv.first}"
end
