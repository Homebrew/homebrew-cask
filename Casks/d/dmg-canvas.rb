cask "dmg-canvas" do
  version "4.1"
  sha256 "429336361cf65532fd282b3d78aa2425e33068faa780bf07ad72418f40693d84"

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
