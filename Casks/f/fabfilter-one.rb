cask "fabfilter-one" do
  version "3.51"
  sha256 "416119b74b1e6713329d05dadd3eeb48cb85c09a22eb62d46555d3d085c818df"

  url "https://cdn-b.fabfilter.com/downloads/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/one-basic-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+One.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.One.#{version.major}"

  # No zap stanza required
end
