cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260307-1317"
  sha256 arm:   "ac5efa13b0d6f489266efa5508ef4d8188f703f6ee006ba9d1486ea10b22cff9",
         intel: "b4a0e5519b8cc98fb93d21b55663cac1034edb1d3cb6246b8e38118fd669eca0"

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
