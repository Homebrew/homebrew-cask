cask "fabfilter-micro" do
  version "1.29"
  sha256 "c5cc658925ce085a62d330be20e9042ddf48afa0e3e8b0bb1f9d8677a51097b5"

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
