cask "fabfilter-pro-ds" do
  version "1.21"
  sha256 "6a2b1fd70457e5d54f9575ba28a6593509594406e37a052bcad5e0d85ad57ba1"

  url "https://www.fabfilter.com/downloads/ffprods#{version.no_dots}.dmg"
  name "FabFilter Pro-DS"
  desc "De-esser plug-in"
  homepage "https://www.fabfilter.com/products/pro-ds-de-esser-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffprods(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-DS #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-DS.#{version.major}"

  # No zap stanza required
end
