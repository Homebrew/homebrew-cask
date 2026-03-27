cask "raspberry-pi-imager" do
  version "2.0.7"
  sha256 "63e686e95db9e8b30ca05496974309fcc4db15cd36a037dc67fae8fdc23b3952"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/rpi-imager-v#{version}.dmg",
      verified: "github.com/raspberrypi/rpi-imager/"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.com/software/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/com.raspberrypi.Raspberry Pi Imager.plist",
    "~/Library/Saved Application State/com.raspberrypi.imagingutility.savedState",
  ]
end
