cask "fabfilter-pro-g" do
  version "1.34"
  sha256 "b10b168d2e98e5768567bd3e69a8b97874bf28d6cfff796d7dd9b2c013f1fb85"

  url "https://cdn-b.fabfilter.com/downloads/ffprog#{version.no_dots}.dmg"
  name "FabFilter Pro-G"
  desc "Gate/expander plug-in"
  homepage "https://www.fabfilter.com/products/pro-g-gate-expander-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-G.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-G #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-G.#{version.major}"

  # No zap stanza required
end
