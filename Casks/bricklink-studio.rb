cask "bricklink-studio" do
  version "2.2.7_1"
  sha256 "cf19b4eed6a715e041c56786297c0d5c6b6fa0dd836f853da551025ca4d9b129"

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
    "~/Library/Preferences/unity.BrickLink.Studio.plist",
    "~/Library/Preferences/unity.BrickLink.Patcher.plist",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Studio",
    "~/Library/Saved Application State/unity.BrickLink.Studio.savedState",
    "~/Library/Saved Application State/unity.BrickLink.Patcher.savedState",
  ]
end
