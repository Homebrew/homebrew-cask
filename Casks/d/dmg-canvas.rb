cask "dmg-canvas" do
  version "4.0.9"
  sha256 "8669199eaea768cf8c71a6fe6939a8508d45d8040566e220a6a79055396288ca"

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
