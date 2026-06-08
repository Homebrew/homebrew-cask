cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260514-1817"
  sha256 arm:   "003c425fa90f3c35df0e6bea5a9c157aed6dce8561e63f5485534e1612d23983",
         intel: "9cea59777dc9c1a8f538afbc2733a62933d7c92911c99bf9ae5db32efc0096f9"

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
  depends_on macos: :big_sur

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
