cask "fabfilter-one" do
  version "3.50"
  sha256 "83dd4ab5061957a0d0dae9c92a8dc0ca310c547b89c1f21fff0c3d837c6a69f7"

  url "https://cdn-b.fabfilter.com/downloads/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/one-basic-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+One.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.One.#{version.major}"

  # No zap stanza required
end
