cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260318-1217"
  sha256 arm:   "4d76cfd44d55d673e95d2b885df54345883b953868ee349ede7d0f87efc44c9f",
         intel: "ae92f476b5db6105cdda19bc7c688ed210365e7a8545e44f574553897b509f94"

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
