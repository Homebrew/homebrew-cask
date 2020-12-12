cask "bricklink-partdesigner" do
  version "1.0.6_5"
  sha256 :no_check

  url "https://dzncyaxjqx7p3.cloudfront.net/PartDesigner/PartDesigner.pkg",
      verified: "dzncyaxjqx7p3.cloudfront.net/"
  appcast "https://bricklink.com/v3/studio/partdesigner.page"
  name "PartDesigner"
  desc "Design your own LEGO parts"
  homepage "https://bricklink.com/v3/studio/partdesigner.page"

  auto_updates true
  depends_on cask: "bricklink-studio"

  pkg "PartDesigner.pkg"

  uninstall pkgutil: "com.bricklink.pkg.PartDesigner"

  zap trash: [
    "~/Library/Application Support/unity.BrickLink.Part Designer",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Part Designer",
    "~/Library/Preferences/unity.BrickLink.Part Designer.plist",
    "~/Library/Preferences/unity.BrickLink.Patcher.plist",
    "~/Library/Saved Application State/unity.BrickLink.Part Designer.savedState",
    "~/Library/Saved Application State/unity.BrickLink.Patcher.savedState",
  ]
end
