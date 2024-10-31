cask "fabfilter-volcano" do
  version "3.07"
  sha256 "d41849e5136122560c0ddc5ec5d21538ca79f7fe07bf47b10a67dfaf384c6b70"

  url "https://cdn-b.fabfilter.com/downloads/ffvolcano#{version.no_dots}.dmg"
  name "FabFilter Volcano"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/volcano-3-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Volcano.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Volcano #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Volcano.#{version.major}"

  # No zap stanza required
end
