cask "gps4cam" do
  version "7.2"
  sha256 "19f4b516077f8141471719497b9169cfde48cbd68fec80ea2f7532d256752cb4"

  url "http://diguet.fr/gps4cam_EN/gps4cam/Download_files/gps4cam_V#{version}.dmg",
      verified: "diguet.fr/gps4cam_EN/gps4cam/Download_files/"
  name "gps4cam"
  desc "Geotag your photos"
  homepage "http://gps4cam.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/gps4cam[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "gps4cam.app"
end
