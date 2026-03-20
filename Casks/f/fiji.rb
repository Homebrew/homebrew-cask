cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260319-2317"
  sha256 arm:   "505e2945bc4491bf7a5a0c203bad9935b1219a854e952f2a6dd7237bb3ce2cff",
         intel: "71781e8f3ac3022a5bc5152537f1abbca2ff7db4c09ba15e87f529c235d2a511"

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
