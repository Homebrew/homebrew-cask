cask "bricklink-partdesigner" do
  version "2.25.3_1"
  sha256 "78ab640c2f0a298ad24a69989edbc7e8bec8eb8118d1a337d8d7d9e43504adbe"

  url "https://studio.download.bricklink.info/PartDesigner/Archive/#{version}/PartDesigner.pkg",
      verified: "studio.download.bricklink.info/PartDesigner/"
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
