cask "fabfilter-pro-q" do
  version "4.12"
  sha256 "3cccfc84a44e5b59400b51f64f4fe8cf43c57c5d83f158ab82d54aa273de6657"

  url "https://cdn-b.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equaliser plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-Q.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.*"

  # No zap stanza required
end
