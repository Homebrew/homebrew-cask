cask "bricklink-partdesigner" do
  version "2.26.3_1"
  sha256 "e7aaf9f48720200829aa3af79b2e9ad3284e50caa5d1484a73b43abb390bedb7"

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
