cask "gps4cam" do
  version "7.2"
  sha256 "19f4b516077f8141471719497b9169cfde48cbd68fec80ea2f7532d256752cb4"

  # diguet.fr/gps4cam_EN/gps4cam/ was verified as official when first introduced to the cask
  url "http://diguet.fr/gps4cam_EN/gps4cam/Download_files/gps4cam_V#{version}.dmg"
  appcast "http://gps4cam.com/"
  name "gps4cam"
  homepage "http://gps4cam.com/"

  app "gps4cam.app"
end
