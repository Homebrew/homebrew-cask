cask "fabfilter-micro" do
  version "1.31"
  sha256 "51bbf80b9e7e5e2b27300e10acc3ccaadac4e68e11d3009bb951dc0cc2152d99"

  url "https://cdn-b.fabfilter.com/downloads/ffmicro#{version.no_dots}.dmg"
  name "FabFilter Micro"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/micro-mini-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Micro.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Micro #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Micro.#{version.major}"

  # No zap stanza required
end
