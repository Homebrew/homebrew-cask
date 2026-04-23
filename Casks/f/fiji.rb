cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260423-0417"
  sha256 arm:   "1460fb671ae6cdc5eadfadeb213b6352766a44aa0542403579124725de16e39a",
         intel: "1c0c23f03f9e0e0dbab4da862cd65666cbb13577d321d690696ffd108ff03c72"

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

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
