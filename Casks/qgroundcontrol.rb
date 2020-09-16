cask "qgroundcontrol" do
  version :latest
  sha256 :no_check

  # qgroundcontrol.s3.amazonaws.com/latest was verified as official when first introduced to the cask
  url "https://qgroundcontrol.s3.amazonaws.com/latest/QGroundControl.dmg"
  name "QGroundControl"
  desc "Cross-platform ground control station for drones"
  homepage "http://qgroundcontrol.com/"

  app "qgroundcontrol.app"
end
