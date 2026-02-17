cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260216-1617"
  sha256 arm:   "ef8b3d937dc397a0cdb961f7840decff9768f0fc72e83c152d0c7132a0ae9128",
         intel: "500a77e4cd30caa8cce1e027376d48b02e205fdd51420572200c17dffc972782"

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
