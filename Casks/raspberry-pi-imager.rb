cask "raspberry-pi-imager" do
  version "1.7"
  sha256 "4014abb4a9ab26473eaba4e1b4d71bd48c677f70f26fa5ba5f04ae9938a62438"

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
