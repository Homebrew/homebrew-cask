cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260317-1217"
  sha256 arm:   "ba122bd71cd84f7ee81afe6a0c0ac2d07a88f6220fbe59eeaca0fb6a7b5f984e",
         intel: "d8ec19f96a258238d72640fa2c926115ad375c3dfc8d77f2a140dc2ec39419ce"

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
