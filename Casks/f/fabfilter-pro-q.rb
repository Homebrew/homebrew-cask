cask "fabfilter-pro-q" do
  version "4.02"
  sha256 "23c7dc464f5f81205e0055d34d93771d5f1efe202255b9b20caf382369096f57"

  url "https://cdn-b.fabfilter.com/downloads/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equaliser plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-Q.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :high_sierra"

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-Q.#{version.major}"

  # No zap stanza required
end
