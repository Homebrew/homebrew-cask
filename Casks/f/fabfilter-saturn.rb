cask "fabfilter-saturn" do
  version "2.13"
  sha256 "2937c0054e748807db6e2b3d5ffeece0a21ea696aa844c70007ab789258f6888"

  url "https://cdn-b.fabfilter.com/downloads/ffsaturn#{version.no_dots}.dmg"
  name "FabFilter Saturn"
  desc "Multiband distorsion/saturation plug-in"
  homepage "https://www.fabfilter.com/products/saturn-2-multiband-distortion-saturation-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Saturn.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Saturn #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Saturn.#{version.major}"

  # No zap stanza required
end
