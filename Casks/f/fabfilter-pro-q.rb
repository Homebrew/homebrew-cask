cask "fabfilter-pro-q" do
  version "4.10"
  sha256 "8db4d55bef015f9d48acac96a9227e93e23c8bf524a2683ed261d55b27a63ffa"

  url "https://cdn-b.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equaliser plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-Q.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.#{version.major}"

  # No zap stanza required
end
