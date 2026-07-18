cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260717-2317"
  sha256 arm:   "634ace1d851ed1b9a915f138c22e5b693f5144d5b75f29216e6c19e299f968e8",
         intel: "4ed64b374e02323d24a70a3c1591c5b304d47b4d5299f151ebd06030af5c328a"

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
