cask "mosaic" do
  version "1.2.6"
  sha256 "3b03b8329f1ff75499662a708e43536cafddd7ef51bff417f865b0f0f71e2326"

  url "https://lightpillar.com/appdata/mosaic/archive/Mosaic_#{version.dots_to_underscores}.pkg"
  appcast "https://lightpillar.com/appdata/mosaic/features/version-history.html"
  name "Mosaic"
  desc "Resize and reposition apps"
  homepage "https://lightpillar.com/mosaic.html"

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
