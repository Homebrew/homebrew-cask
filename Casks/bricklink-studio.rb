cask "bricklink-studio" do
  version "2.1.8_1"
  sha256 "9e4444ab0fb97dff74f093a4952ba4728f9cdc92eee64c030f80badf83b809b0"

  # blstudio.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://blstudio.s3.amazonaws.com/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg"
  appcast "https://www.bricklink.com/v3/studio/download.page"
  name "Studio"
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
