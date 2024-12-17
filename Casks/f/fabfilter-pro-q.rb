cask "fabfilter-pro-q" do
  version "4.01"
  sha256 "8e936e5c5aec7ab1b48378b7736fdd953284ce160f840812591a8ca018458e83"

  url "https://cdn-b.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equaliser plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-Q.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.#{version.major}"

  # No zap stanza required
end
