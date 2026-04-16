cask "fabfilter-twin" do
  version "3.07"
  sha256 "ef20ab98909c90fab197343bcc856026c8c4183e9d5743499b37c906fce7d0ae"

  url "https://cdn-b.fabfilter.com/downloads/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/twin-3-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Twin.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Twin.#{version.major}"

  # No zap stanza required
end
