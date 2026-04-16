cask "fabfilter-simplon" do
  version "1.42"
  sha256 "ec39bcbf3c3170790c6a4b95bbbb42bb0d91c02d23b3cddb0dd04a239be99af8"

  url "https://cdn-b.fabfilter.com/downloads/ffsimplon#{version.no_dots}.dmg"
  name "FabFilter Simplon"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/simplon-basic-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Simplon.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Simplon #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Simplon.*"

  # No zap stanza required
end
