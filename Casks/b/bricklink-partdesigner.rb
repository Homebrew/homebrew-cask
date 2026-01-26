cask "bricklink-partdesigner" do
  version "2.25.10_1"
  sha256 "04d08d46d642488d11fe7b7b468719108bcc2b911f6a1a4d671dfe111e16e8fd"

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
