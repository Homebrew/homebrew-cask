cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260116-1617"
  sha256 arm:   "822f003830e7dce198c4953ee2bc9e39ebda2f8a01a094d6843591609ff4eb74",
         intel: "5d2a20ed496bddd243db4f4719c35a01340da05dca78fd821b0314f901da8f1e"

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
