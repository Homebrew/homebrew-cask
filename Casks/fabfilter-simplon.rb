cask "fabfilter-simplon" do
  version "1.36"
  sha256 "b6f3c83ac3237ad9acf4f8e05b041ff7747715bc94e2824701d9b0dba9d0b36d"

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

  # No zap stanza required
end
