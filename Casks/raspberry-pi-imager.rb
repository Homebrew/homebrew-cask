cask "raspberry-pi-imager" do
  version "1.7.5"
  sha256 "bd690d70253db356965e065a6098170874dfc48f864b0c157c6dda28ac2479f7"

  url "https://downloads.raspberrypi.org/imager/imager_#{version}.dmg"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.org/downloads/"

  livecheck do
    url "https://downloads.raspberrypi.org/imager/imager_latest.dmg"
    strategy :header_match
  end

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/org.raspberrypi.Imager.plist",
    "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState",
  ]
end
