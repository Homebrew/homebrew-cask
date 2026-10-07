cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261007-1617"
  sha256 arm:   "d26280e92a18d7036c92c17a2ca938154c2591c2d5e6bf982ec953a3368b18bd",
         intel: "bad54b68aae5419772c78c67c1e45c8f6ed6722cd53543c4a3bb4bd44f136c93"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on :macos

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
