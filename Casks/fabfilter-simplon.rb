cask "fabfilter-simplon" do
  version "1.35"
  sha256 "0bf0ad7eb023a5068f6efd51110a49c1cc90daaffe92bbebaa7caf8508d969df"

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

  depends_on macos: ">= :sierra"

  pkg "FabFilter Simplon #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Simplon.#{version.major}"
end
