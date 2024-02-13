cask "fabfilter-simplon" do
  version "1.38"
  sha256 "cc88e8bf40c2232f01022e471b6064977d83dadd321c6c664fe4e2d1007f8520"

  url "https://www.fabfilter.com/downloads/ffsimplon#{version.no_dots}.dmg"
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

  # No zap stanza required
end
