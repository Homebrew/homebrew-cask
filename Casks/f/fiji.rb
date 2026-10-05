cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261004-2017"
  sha256 arm:   "26af2159ca1d770de2c6b4fd99b98292891c50abdeaa00d1c66a425cd3de45b0",
         intel: "def9efc3426fef61b03a1d90a629165faa58919937c4d86177221cef2fb074da"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on :macos

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
