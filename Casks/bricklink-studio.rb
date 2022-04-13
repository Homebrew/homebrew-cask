cask "bricklink-studio" do
  version "2.22.3_1"
  sha256 "b4d759b121577df72a2c7cba7bd982d7eee3f2025ecd908c8a527bf5e553a881"

  url "https://blstudio.s3.amazonaws.com/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg",
      verified: "blstudio.s3.amazonaws.com/"
  name "Studio"
  desc "Build, render, and create LEGO instructions"
  homepage "https://www.bricklink.com/v3/studio/download.page"

  livecheck do
    url "https://www.bricklink.com/v2/build/studio.page"
    regex(/"version"\s*:\s*"(\d+(?:[._-]\d+)*)"/i)
  end

  auto_updates true

  pkg "Studio #{version.major}.0.pkg"

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
