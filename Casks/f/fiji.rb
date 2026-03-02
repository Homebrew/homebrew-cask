cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260302-1417"
  sha256 arm:   "f2251e5707b7aeb9eb57a9f49e6cd0781dee5bc567a612f1c2dfbcd8f60d1542",
         intel: "f27a0a0bfda8e20d20a1c9c79c6af72de08dec04ad8d53f0da21bd93192c68c6"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fiji/Fiji.app"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
