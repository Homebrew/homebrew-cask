cask "fabfilter-micro" do
  version "1.30"
  sha256 "47ad660be71beed6ca6e58445e3fadce71ee8185d73ebc6be5f83a62662acded"

  url "https://cdn-b.fabfilter.com/downloads/ffmicro#{version.no_dots}.dmg"
  name "FabFilter Micro"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/micro-mini-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Micro.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Micro #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Micro.#{version.major}"

  # No zap stanza required
end
