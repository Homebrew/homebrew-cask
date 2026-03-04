cask "mosaic" do
  version "1.5.1"
  sha256 "efb5a5f1845da0111401abad63982bf3276d23cce98fee1180f852df2246b1c6"

  url "https://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  name "Mosaic"
  desc "Resize and reposition apps"
  homepage "https://lightpillar.com/mosaic.html"

  livecheck do
    url "https://lightpillar.com/appdata/mosaic/features/version-history.html"
    regex(/>\s*Version\s*(\d+(?:\.\d+)+)\s*</i)
  end

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
