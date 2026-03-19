cask "fabfilter-volcano" do
  version "3.08"
  sha256 "fd9c313f5d72320d106189e09e4919ea1aeec3352f28d82836faa1424bf19d6c"

  url "https://cdn-b.fabfilter.com/downloads/ffvolcano#{version.no_dots}.dmg"
  name "FabFilter Volcano"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/volcano-3-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Volcano.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Volcano #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Volcano.#{version.major}"

  # No zap stanza required
end
