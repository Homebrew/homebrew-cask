cask "fabfilter-pro-r" do
  version "2.05"
  sha256 "22cd3df66d2297407166a202f602c8a67e4b0cebab2cdb47bccbe3c76d658bee"

  url "https://cdn-b.fabfilter.com/downloads/ffpror#{version.no_dots}.dmg"
  name "FabFilter Pro-R"
  desc "Reverb plug-in"
  homepage "https://www.fabfilter.com/products/pro-r-2-reverb-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-R.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-R #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-R.#{version.major}"

  # No zap stanza required
end
