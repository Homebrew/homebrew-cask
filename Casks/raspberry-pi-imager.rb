cask "raspberry-pi-imager" do
  version "1.7.2"
  sha256 "d78a8b188856f9bbf2958f4217a5d2a823f9c822aaba308a930f255bbf596f21"

  url "https://downloads.raspberrypi.org/imager/imager_#{version}.dmg"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.org/downloads/"

  livecheck do
    url "https://downloads.raspberrypi.org/imager/imager_latest.dmg"
    strategy :header_match
  end

  app "Raspberry Pi Imager.app"

  zap trash: "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState"
end
