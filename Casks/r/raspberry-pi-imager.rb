cask "raspberry-pi-imager" do
  version "1.8.1"
  sha256 "8b9e154d4b40475abd1184157a5bbedd9dfcb01781056b69f03801e6a4356b19"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/Raspberry.Pi.Imager.#{version}-UNIVERSAL-BUILD.dmg",
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
