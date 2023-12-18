cask "qgroundcontrol" do
  version "4.3.0"
  sha256 :no_check

  url "https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.dmg",
      verified: "d176tv9ibo4jno.cloudfront.net/latest/"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "http://qgroundcontrol.com/"

  livecheck do
    url "https://github.com/mavlink/qgroundcontrol/releases/"
    strategy :github_latest
  end

  app "qgroundcontrol.app"

  zap trash: [
    "~/Documents/QGroundControl",
    "~/Library/Caches/QGroundControl.org",
    "~/Library/Saved Application State/org.qgroundcontrol.QGroundControl.savedState",
  ]
end
