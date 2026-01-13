cask "dmg-canvas" do
  version "4.2.3"
  sha256 "38cc30ea79325142386f23b94302f1b9eb3fb0b4a8dbf05305ca11a82f0cd54a"

  url "https://arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/versions/DMGCanvas#{version}.zip",
      verified: "arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/"
  name "DMG Canvas"
  desc "Stylised disk images made easy"
  homepage "https://www.araelium.com/dmgcanvas"

  livecheck do
    url "https://www.araelium.com/support/dmgcanvas/download-previous-versions"
    regex(/href=.*?DMGCanvas[._-]?v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)/i)
  end

  depends_on macos: ">= :big_sur"

  app "DMG Canvas.app"

  zap trash: [
    "~/Library/Application Support/DMG Canvas",
    "~/Library/Caches/com.araelium.dmgcanvas",
    "~/Library/HTTPStorages/com.araelium.dmgcanvas",
    "~/Library/Preferences/com.araelium.dmgcanvas.plist",
  ]
end
