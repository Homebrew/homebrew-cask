cask "fabfilter-pro-ds" do
  version "1.31"
  sha256 "7ad88d49103af961c0daa9787697677fe3f98d020c7e37519ca1edff238f2d65"

  url "https://cdn-b.fabfilter.com/downloads/ffprods#{version.no_dots}.dmg"
  name "FabFilter Pro-DS"
  desc "De-esser plug-in"
  homepage "https://www.fabfilter.com/products/pro-ds-de-esser-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-DS.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-DS #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-DS.#{version.major}"

  # No zap stanza required
end
