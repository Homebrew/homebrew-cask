cask "fabfilter-volcano" do
  version "3.09"
  sha256 "04d6e491eec8cb3d5d5da6eb797a4e646e7b722a7b75b0e76486bb1a3d4221f4"

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
