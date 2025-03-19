cask "qgroundcontrol" do
  version "4.4.4"
  sha256 "f12f64be5b54abe4753f53d4773aebb3cd9aee6f0d1dcbe471f68e6eacd2f464"

  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg",
      verified: "github.com/mavlink/qgroundcontrol/"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "https://qgroundcontrol.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "qgroundcontrol.app"

  zap trash: [
    "~/Documents/QGroundControl",
    "~/Library/Caches/QGroundControl.org",
    "~/Library/Saved Application State/org.qgroundcontrol.QGroundControl.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
