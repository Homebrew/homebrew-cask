cask "dmg-canvas" do
  version "4.0.8"
  sha256 "8cd7204af752fd04364da5d5c7e2a383b83f50fac5e04a26b23e64e1e5d92321"

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
