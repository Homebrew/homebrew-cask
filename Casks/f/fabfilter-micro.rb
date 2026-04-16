cask "fabfilter-micro" do
  version "1.32"
  sha256 "3d7e2e2dcdf7533f6e7af87c464f16c0ebcebdc5a547f09d576fda67201707bf"

  url "https://cdn-b.fabfilter.com/downloads/ffmicro#{version.no_dots}.dmg"
  name "FabFilter Micro"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/micro-mini-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Micro.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Micro #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Micro.*"

  # No zap stanza required
end
