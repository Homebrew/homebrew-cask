cask "fabfilter-pro-c" do
  version "3.00"
  sha256 "f11e9a6140cfced7459107f8262a2aea43f08b256c4bf43b009efbf55838ba63"

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
