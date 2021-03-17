cask "raspberry-pi-imager" do
  version "1.6"
  sha256 "800c48d49eca9199f275a73821686381e23dc5a22d0b87b77b57322afafbe5f2"

  url "https://downloads.raspberrypi.org/imager/imager_#{version}.dmg"
  appcast "https://github.com/raspberrypi/rpi-imager/releases.atom"
  name "Raspberry Pi Imager"
  homepage "https://www.raspberrypi.org/downloads/"

  app "Raspberry Pi Imager.app"

  zap trash: "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState"
end
