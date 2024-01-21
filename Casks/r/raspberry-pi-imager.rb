cask "raspberry-pi-imager" do
  version "1.8.5"
  sha256 "55ee320bfc56c0a4d396bede83c7f2bd0b46582227ece2038872330ca6104f6e"

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
