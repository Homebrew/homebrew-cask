cask "fabfilter-pro-c" do
  version "3.01"
  sha256 "b3fd711cd9866d1710b28d96a5b80c80a5c50a0d7b8f6ba5691c87901ceeb5e0"

  url "https://cdn-b.fabfilter.com/downloads/ffproc#{version.no_dots}.dmg"
  name "FabFilter Pro-C"
  desc "Compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-c-2-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-C.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-C #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-C.#{version.major}"

  # No zap stanza required
end
