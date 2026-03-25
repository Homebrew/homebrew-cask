cask "bricklink-studio" do
  version "2.26.3_1"
  sha256 "3a1d14c69386e485329a1110e1686147b4e6fcb8ae7b5f8ed9443477a7372006"

  url "https://studio.download.bricklink.info/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg",
      verified: "studio.download.bricklink.info/"
  name "Studio"
  desc "Build, render, and create LEGO instructions"
  homepage "https://www.bricklink.com/v3/studio/download.page"

  livecheck do
    url :homepage
    regex(/"strVersion"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  pkg "Studio+#{version.major}.0.pkg"

  uninstall pkgutil: "com.bricklink.pkg.Studio#{version.major}.0"

  zap trash: [
    "~/Library/Application Support/unity.BrickLink.Studio",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Studio",
    "~/Library/Preferences/unity.BrickLink.Patcher.plist",
    "~/Library/Preferences/unity.BrickLink.Studio.plist",
    "~/Library/Saved Application State/unity.BrickLink.Patcher.savedState",
    "~/Library/Saved Application State/unity.BrickLink.Studio.savedState",
  ]
end
