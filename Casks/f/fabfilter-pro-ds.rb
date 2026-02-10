cask "fabfilter-pro-ds" do
  version "1.30"
  sha256 "ffa08760c873d66e52061c2e97d9eaceb3bdb4db002805ae7e6a9024f97e88be"

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
