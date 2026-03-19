cask "fabfilter-saturn" do
  version "2.12"
  sha256 "ca100f12b563e48d726b5d547ddab8cd64a2558533c09b31d59be24b47e8f454"

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
