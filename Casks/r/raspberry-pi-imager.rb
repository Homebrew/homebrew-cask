cask "raspberry-pi-imager" do
  version "2.0.7"
  sha256 "7d25455c2457c080441e692d17dbb6f65bb7b66f7472b33a5dddf84069f7c74a"

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
