cask "raspberry-pi-imager" do
  arch arm: "UNIVERSAL.BUILD.", intel: ""

  version "1.7.5"
  sha256 arm:   "03f73b1402acd52718e27496e8c2a3778f5fc1d6845cd19b04318ffde24d6c4b",
         intel: "bd690d70253db356965e065a6098170874dfc48f864b0c157c6dda28ac2479f7"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/Raspberry.Pi.Imager.#{version}.#{arch}dmg",
      verified: "github.com/raspberrypi/rpi-imager/"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.org/downloads/"

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/org.raspberrypi.Imager.plist",
    "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState",
  ]
end
