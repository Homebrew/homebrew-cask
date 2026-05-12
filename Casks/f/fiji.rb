cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260506-1117"
  sha256 arm:   "39308c035ffdfd7efca0c2d99f917e6936d4df5d9853109f4c043592beeee145",
         intel: "753ac703fa23ba4f5c0e809c2a22e4ba65fcb9f25c7810db5b942f0e43e79879"

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
