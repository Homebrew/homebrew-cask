cask "dmg-canvas" do
  version "4.0.3,400018"
  sha256 :no_check

  url "https://arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/DMGCanvas.dmg",
      verified: "arweb-assets.s3.amazonaws.com/downloads/dmgcanvas/"
  name "DMG Canvas"
  desc "Stylized disk images made easy"
  homepage "https://www.araelium.com/dmgcanvas"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DMG Canvas.app"
end
