cask "qgroundcontrol" do
  version "5.1.4"
  sha256 "25fa8fc92f3e6ed9b80fe7046aac0e163bf74e0ece5d6149a0b12a5faca1502d"

  url "https://github.com/mavlink/qgroundcontrol/releases/download/v#{version}/QGroundControl.dmg"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "https://qgroundcontrol.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "QGroundControl.app"

  zap trash: [
    "~/Documents/QGroundControl",
    "~/Library/Caches/QGroundControl.org",
    "~/Library/Saved Application State/org.qgroundcontrol.QGroundControl.savedState",
  ]
end
