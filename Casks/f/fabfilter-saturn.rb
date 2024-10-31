cask "fabfilter-saturn" do
  version "2.11"
  sha256 "0bb94e8d2c1643af89d1d6f7f805e8effcaa29a1af87f54eb27094adf810b2ef"

  url "https://cdn-b.fabfilter.com/downloads/ffsaturn#{version.no_dots}.dmg"
  name "FabFilter Saturn"
  desc "Multiband distorsion/saturation plug-in"
  homepage "https://www.fabfilter.com/products/saturn-2-multiband-distortion-saturation-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Saturn.*?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Saturn #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Saturn.#{version.major}"

  # No zap stanza required
end
