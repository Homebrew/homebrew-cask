cask "fabfilter-twin" do
  version "3.06"
  sha256 "8c015b83a757cdbdeafa64c910f04429a717149648ab7d7d17004c09beb30070"

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
