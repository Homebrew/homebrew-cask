cask "fabfilter-pro-mb" do
  version "1.25"
  sha256 "9f9147b4b02157ca9909ec5dc98618595746c04c44c9a89b3524531bb6e3bc3c"

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

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-MB.#{version.major}"
end
