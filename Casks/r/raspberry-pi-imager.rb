cask "raspberry-pi-imager" do
  version "1.8.5"
  sha256 "154a101fd6cfeb0b92a1d53ccaba047a9cd7e2fddfef3988178952416e940681"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/Raspberry.Pi.Imager.#{version}.dmg",
      verified: "github.com/raspberrypi/rpi-imager/"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.org/downloads/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/org.raspberrypi.Imager.plist",
    "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState",
  ]
end
