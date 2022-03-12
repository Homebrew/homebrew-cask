cask "raspberry-pi-imager" do
  version "1.7.1"
  sha256 "11e5e7d5f92727db988937d58f7d755fee441d8b9e715519d0be0ee241c8b075"

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
