cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260217-1417"
  sha256 arm:   "c134fd4a656638b3a60d4abe517b1245d9e1838c558382f746ad5213ed19c569",
         intel: "eccd49f0c17e6d410e3ec8e10ce0226660b0057927bea12f5524435851edeefc"

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
