cask "mosaic" do
  version "1.4"
  sha256 "6fdc884ac0bb21fe84bfb51c389ec810776af0fd78bdb4a176a796bdb7e25c98"

  url "https://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  name "Mosaic"
  desc "Resize and reposition apps"
  homepage "https://lightpillar.com/mosaic.html"

  livecheck do
    url "https://lightpillar.com/appdata/mosaic/features/version-history.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "Mosaic_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: [
    "com.btinternet.pkg.Mosaic",
    "com.lightpillar.Mosaic.pkg",
  ]

  zap trash: [
    "~/Library/Application Support/com.lightpillar.Mosaic",
    "~/Library/Caches/com.lightpillar.Mosaic",
    "~/Library/Preferences/com.lightpillar.Mosaic.plist",
  ]
end
