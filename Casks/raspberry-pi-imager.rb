cask "raspberry-pi-imager" do
  version "1.4"
  sha256 "85b337e9ccbec6dd39b0ddbf4b9b4cb1f39fb90f6923a3fea694b2300e936538"

  url "https://downloads.raspberrypi.org/imager/imager_#{version}.dmg"
  appcast "https://github.com/raspberrypi/rpi-imager/releases.atom"
  name "Raspberry Pi Imager"
  homepage "https://www.raspberrypi.org/downloads/"

  app "Raspberry Pi Imager.app"

  zap trash: "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState"
end
