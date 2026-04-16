cask "fabfilter-pro-mb" do
  version "1.33"
  sha256 "3379f8b61af247a9a3eec7bf17b8e5b1ab40354e93dc31da7d76f34367d7e187"

  url "https://cdn-b.fabfilter.com/downloads/ffpromb#{version.no_dots}.dmg"
  name "FabFilter Pro-MB"
  desc "Multiband compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-mb-multiband-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    regex(/FabFilter\s+Pro-MB.*?v?(\d+(?:\.\d+)+)/im)
  end

  pkg "FabFilter Pro-MB #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-MB.#{version.major}"

  # No zap stanza required
end
