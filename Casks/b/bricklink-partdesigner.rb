cask "bricklink-partdesigner" do
  version "2.26.11_1"
  sha256 "1d7a52a9443b22c6f7dcf59840a0559079f05d9160020d5ed690aa686927e0d4"

  url "https://studio.download.bricklink.info/PartDesigner/Archive/#{version}/PartDesigner.pkg"
  name "PartDesigner"
  desc "Design your own LEGO parts"
  homepage "https://www.bricklink.com/v3/studio/partdesigner.page"

  livecheck do
    url :homepage
    regex(/"strVersion"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on cask: "bricklink-studio"
  depends_on :macos

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
