cask "fabfilter-simplon" do
  version "1.34"
  sha256 "74d5beabbad61e05228c5f3682b3e7c966bccba1a2a4d2dc63ccbbbe9075e222"

  url "https://download.fabfilter.com/ffsimplon#{version.no_dots}.dmg"
  name "FabFilter Simplon"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/simplon-basic-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffsimplon(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Simplon #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Simplon.#{version.major}"
end
