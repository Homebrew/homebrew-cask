cask "fabfilter-simplon" do
  version "1.37"
  sha256 "d32af4ac3c09051ae3243cfc001c6023a313edce06f8f2c1dc8238a10011e81e"

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
