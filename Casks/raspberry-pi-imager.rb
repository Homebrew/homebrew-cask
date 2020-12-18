cask "raspberry-pi-imager" do
  version "1.5"
  sha256 "080a6ce49f9c899d57515907cc8020efa9b06ef986ea6e916c065f76879be0ef"

  url "https://downloads.raspberrypi.org/imager/imager_#{version}.dmg"
  appcast "https://github.com/raspberrypi/rpi-imager/releases.atom"
  name "Raspberry Pi Imager"
  homepage "https://www.raspberrypi.org/downloads/"

  app "Raspberry Pi Imager.app"

  zap trash: "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState"
end
