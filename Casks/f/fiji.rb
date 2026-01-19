cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260119-1317"
  sha256 arm:   "f40994fa3c4c79048d7aec9a89faa1e4e0981add02d279ff6950a080a108719a",
         intel: "6771886b36e3204d0d00a046a2d8d522d97e11f1d22dc8596136b76fd31e05b8"

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
