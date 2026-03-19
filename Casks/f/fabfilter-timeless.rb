cask "fabfilter-timeless" do
  version "3.09"
  sha256 "3fb2f4a376c4bea9b442e06b961fa38ce4a46bc1ad2e923b5bdb80260f042c73"

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
