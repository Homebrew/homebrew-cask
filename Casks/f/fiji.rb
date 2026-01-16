cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260114-1317"
  sha256 arm:   "feeaa85dc30bd45b4f07a35316c0bd75175e45d5851e2386251b37180c9bd57b",
         intel: "bfc66fc07ce32f506191c926e68fcd564372ad438497d7906615c714e69ce219"

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
