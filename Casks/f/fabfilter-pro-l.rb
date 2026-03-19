cask "fabfilter-pro-l" do
  version "2.25"
  sha256 "5dc97e158ae4d96a2e81a540d80edf006bd4327d22b7e4052a40dc4f2138bee0"

  url "https://cdn-b.fabfilter.com/downloads/ffprol#{version.no_dots}.dmg"
  name "FabFilter Pro-L"
  desc "Limiter plug-in"
  homepage "https://www.fabfilter.com/products/pro-l-2-limiter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-L.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-L #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-L.#{version.major}"

  # No zap stanza required
end
