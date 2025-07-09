cask "qgroundcontrol" do
  version "5.0.5"
  sha256 "0ac975f5cf2909bd41f19f865b25251c20e71daf928e4a1d1fa9e596261b3049"

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
