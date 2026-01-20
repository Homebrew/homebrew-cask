cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260120-1017"
  sha256 arm:   "ccbf76287315ee7c88b7ec6c80d020f9141f1fa45524ebbeb5be7258bc61f722",
         intel: "88aa9e5f96579e4337f17014e52196fd2eddb63a08c9eec61b510dc851eb1a8a"

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
