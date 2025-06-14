cask "raspberry-pi-imager" do
  version "1.9.4"
  sha256 "949099a55aa97b380e3b9c24ec02e6fdb9a5b7e57257720fe3d9cf6190e110be"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/Raspberry.Pi.Imager-#{version}.dmg",
      verified: "github.com/raspberrypi/rpi-imager/"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.org/downloads/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/org.raspberrypi.Imager.plist",
    "~/Library/Saved Application State/org.raspberrypi.imagingutility.savedState",
  ]
end
