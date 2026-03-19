cask "fabfilter-pro-mb" do
  version "1.32"
  sha256 "73669b081645e0cc15b997c04868dea42b64c3018159e4de89c1ca2568b25b3d"

  url "https://cdn-b.fabfilter.com/downloads/ffpromb#{version.no_dots}.dmg"
  name "FabFilter Pro-MB"
  desc "Multiband compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-mb-multiband-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-MB.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-MB.#{version.major}"

  # No zap stanza required
end
