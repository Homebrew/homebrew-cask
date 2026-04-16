cask "fabfilter-timeless" do
  version "3.10"
  sha256 "7f0d65e013ad2992cfcbbd5f1c64b81af09178be10e25675fa94cc772f8e82f0"

  url "https://cdn-b.fabfilter.com/downloads/fftimeless#{version.no_dots}.dmg"
  name "FabFilter Timeless"
  desc "Tape delay plug-in"
  homepage "https://www.fabfilter.com/products/timeless-3-delay-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Timeless.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Timeless #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Timeless.#{version.major}"

  # No zap stanza required
end
