cask "fabfilter-pro-mb" do
  version "1.29"
  sha256 "47065f818978fa4b10b65162359309a9d457af914354de6f335288c2a575d0c2"

  url "https://www.fabfilter.com/downloads/ffpromb#{version.no_dots}.dmg"
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

  # No zap stanza required
end
