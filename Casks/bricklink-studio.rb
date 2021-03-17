cask "bricklink-studio" do
  version "2.1.10_7"
  sha256 "b24f645ef5a6f16150fdd98735cd315beaf605b53d64920563abfb6938d1bc3b"

  url "https://blstudio.s3.amazonaws.com/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg",
      verified: "blstudio.s3.amazonaws.com/"
  appcast "https://www.bricklink.com/v3/studio/download.page"
  name "Studio"
  desc "Build, render, and create LEGO instructions"
  homepage "https://www.bricklink.com/v3/studio/download.page"

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
