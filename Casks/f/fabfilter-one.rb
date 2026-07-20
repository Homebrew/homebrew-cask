cask "fabfilter-one" do
  version "3.52"
  sha256 "40d9d2c37c97c1d08b031b40bbd0d6a72c6e8afe339af1b2f5d4a03611bd5849"

  url "https://cdn-b.fabfilter.com/downloads/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/one-basic-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+One.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on :macos

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.One.*"

  # No zap stanza required
end
