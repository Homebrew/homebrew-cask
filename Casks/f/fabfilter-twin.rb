cask "fabfilter-twin" do
  version "3.05"
  sha256 "0f93606650ce1ead95ba7eabd65140fe0bec9fb9de9844d39e4c01eec3991318"

  url "https://cdn-b.fabfilter.com/downloads/fftwin#{version.no_dots}.dmg"
  name "FabFilter Twin"
  desc "Synthesiser plug-in"
  homepage "https://www.fabfilter.com/products/twin-3-synthesizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Twin.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Twin #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Twin.#{version.major}"

  # No zap stanza required
end
