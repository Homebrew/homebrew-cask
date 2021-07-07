cask "mosaic" do
  version "1.3.2"
  sha256 "7ce5d48c167489d8dd0f7997531251c1a0052e7dc14fa2171e8c09a04e065651"

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
