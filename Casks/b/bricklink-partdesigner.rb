cask "bricklink-partdesigner" do
  version "2.24.7_1"
  sha256 :no_check

  url "https://dzncyaxjqx7p3.cloudfront.net/PartDesigner/PartDesigner.pkg",
      verified: "dzncyaxjqx7p3.cloudfront.net/PartDesigner/"
  name "PartDesigner"
  desc "Design your own LEGO parts"
  homepage "https://www.bricklink.com/v3/studio/partdesigner.page"

  livecheck do
    url :homepage
    regex(/"strVersion"\s*:\s*"([^"]+)"/i)
  end

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
