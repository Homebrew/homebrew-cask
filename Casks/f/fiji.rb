cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260128-0817"
  sha256 arm:   "ecf574a18bbea637af3dc78f12a78dec2e90d00ac9dc886e665d6d8804ee25ed",
         intel: "8376470b6d648fc56642c283ea88712895060ca74b90567574e730dc4da60599"

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
