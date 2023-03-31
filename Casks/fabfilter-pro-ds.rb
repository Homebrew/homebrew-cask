cask "fabfilter-pro-ds" do
  version "1.20"
  sha256 "bad739acb300f13be5192c5564c6e7b189cf579ed3049b5e75dc4a6ea6f31638"

  url "https://download.fabfilter.com/ffprods#{version.no_dots}.dmg"
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
end
