cask "fabfilter-pro-g" do
  version "1.40"
  sha256 "a5e894383918ae05c0cb923d18ce1bf122208e9225afedb4c6c4a34cfaef5d2f"

  url "https://cdn-b.fabfilter.com/downloads/ffprog#{version.no_dots}.dmg"
  name "FabFilter Pro-G"
  desc "Gate/expander plug-in"
  homepage "https://www.fabfilter.com/products/pro-g-gate-expander-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-G.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-G #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-G.#{version.major}"

  # No zap stanza required
end
