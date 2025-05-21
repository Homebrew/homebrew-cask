cask "fabfilter-simplon" do
  version "1.40"
  sha256 "1112b5019cf2925dfc8fe1ee96bb87dc25256984a9a4126d2c23e13fb498bee2"

  url "https://cdn-b.fabfilter.com/downloads/ffsimplon#{version.no_dots}.dmg"
  name "FabFilter Simplon"
  desc "Filter plug-in"
  homepage "https://www.fabfilter.com/products/simplon-basic-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Simplon.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Simplon #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Simplon.#{version.major}"

  # No zap stanza required
end
