cask "dmg-canvas" do
  version "4.0.7,400028"
  sha256 :no_check

  url "https://arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/DMGCanvas.dmg",
      verified: "arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/"
  name "DMG Canvas"
  desc "Stylised disk images made easy"
  homepage "https://www.araelium.com/dmgcanvas"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DMG Canvas.app"

  zap trash: [
    "~/Library/Application Support/DMG Canvas",
    "~/Library/Caches/com.araelium.dmgcanvas",
    "~/Library/HTTPStorages/com.araelium.dmgcanvas",
    "~/Library/Preferences/com.araelium.dmgcanvas.plist",
  ]
end
