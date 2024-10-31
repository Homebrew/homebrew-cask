cask "fabfilter-pro-mb" do
  version "1.31"
  sha256 "718a81029c754fa92c23f813d8b5152d0354ff737a04a7ba82f429f53bc633a9"

  url "https://cdn-b.fabfilter.com/downloads/ffpromb#{version.no_dots}.dmg"
  name "FabFilter Pro-MB"
  desc "Multiband compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-mb-multiband-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-MB.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-MB.#{version.major}"

  # No zap stanza required
end
