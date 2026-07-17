cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260716-2317"
  sha256 arm:   "f2f26750b5a2047d9398e4b2828c0840203b62902cf5aaf1d192404c9c4d86fe",
         intel: "53ed626b835d4a79e0e99e83e98df04832d6b265f492fc9dd4b4db99e4f54511"

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
