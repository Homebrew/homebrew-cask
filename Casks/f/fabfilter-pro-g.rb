cask "fabfilter-pro-g" do
  version "1.42"
  sha256 "e1f726b44345c36228cad0530476318f6b976f97b0cb3fd4afdd4f4dc6bd41f7"

  url "https://cdn-b.fabfilter.com/downloads/ffprog#{version.no_dots}.dmg"
  name "FabFilter Pro-G"
  desc "Gate/expander plug-in"
  homepage "https://www.fabfilter.com/products/pro-g-gate-expander-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-G.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter Pro-G #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-G.*"

  # No zap stanza required
end
