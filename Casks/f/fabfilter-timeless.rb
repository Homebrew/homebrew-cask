cask "fabfilter-timeless" do
  version "3.08"
  sha256 "ba26f3dd8f2cd8dca37620bde17521d4e37a9f4dcc7dd5f1d03a6bf61fa9d929"

  url "https://cdn-b.fabfilter.com/downloads/fftimeless#{version.no_dots}.dmg"
  name "FabFilter Timeless"
  desc "Tape delay plug-in"
  homepage "https://www.fabfilter.com/products/timeless-3-delay-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Timeless.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Timeless #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Timeless.#{version.major}"

  # No zap stanza required
end
