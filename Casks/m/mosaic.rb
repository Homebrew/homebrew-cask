cask "mosaic" do
  version "1.5"
  sha256 "ca9b517658cc6ef07fc2781024249d0db8707fbd033c4a29e495f47b91e3b7d7"

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
