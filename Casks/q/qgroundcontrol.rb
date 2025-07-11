cask "qgroundcontrol" do
  version "5.0.6"
  sha256 "313728b0e8a182c8ca0e24e95b3dd019a91c0422aefaad906346d55e58b2eb7c"

  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg",
      verified: "github.com/mavlink/qgroundcontrol/"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "https://qgroundcontrol.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "QGroundControl.app"

  zap trash: [
    "~/Documents/QGroundControl",
    "~/Library/Caches/QGroundControl.org",
    "~/Library/Saved Application State/org.qgroundcontrol.QGroundControl.savedState",
  ]
end
