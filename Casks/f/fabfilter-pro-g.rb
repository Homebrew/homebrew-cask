cask "fabfilter-pro-g" do
  version "1.41"
  sha256 "6c552d6121b314fb1188d3732148914a28d350c657cb47103a5d1992f09c5d1d"

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
