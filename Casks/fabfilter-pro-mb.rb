cask "fabfilter-pro-mb" do
  version "1.27"
  sha256 "51a07397244cf741e7045bdd8d3a70297127fdbbc629fb9cdf60942ca54cbfe5"

  url "https://download.fabfilter.com/ffpromb#{version.no_dots}.dmg"
  name "FabFilter Pro-MB"
  desc "Multiband compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-mb-multiband-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffpromb(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-MB.#{version.major}"
end
