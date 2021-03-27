cask "qgroundcontrol" do
  version "4.0.11"
  sha256 :no_check

  url "https://qgroundcontrol.s3.amazonaws.com/latest/QGroundControl.dmg",
      verified: "qgroundcontrol.s3.amazonaws.com/latest/"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "http://qgroundcontrol.com/"

  app "qgroundcontrol.app"
end
