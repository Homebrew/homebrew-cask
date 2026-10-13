cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261013-1517"
  sha256 arm:   "7bf4a0ebbb308a9cd3328f59b81edb4e680100bff130277ae8de95f0f2416f02",
         intel: "15a5f41dda156248ebc80e3fcf7410b80035e5ebccd8396c43c01991a4f16d7a"

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
