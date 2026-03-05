cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260305-0817"
  sha256 arm:   "dc94976dc9994a7f2b04a4df400c63faa3aaf03ed7c973033e17595fac3a0dc5",
         intel: "aa1f078b7c37fcca562c34df4ded64969f57e68070f78f77adc9efc0e378a006"

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
