cask "fabfilter-pro-ds" do
  version "1.32"
  sha256 "c16c371d3b0bbbe5bb767c35d931a267e30e7a962be30bc4a037f702e33913c6"

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
