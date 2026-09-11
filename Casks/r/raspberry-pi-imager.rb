cask "raspberry-pi-imager" do
  version "2.0.11.1"
  sha256 "2b4c5324c5ff04aa3bfb216795ae9e01cb54400752727353e13fb21e66c528a9"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/rpi-imager-v#{version}.dmg"
  name "Raspberry Pi Imager"
  desc "Imaging utility to install operating systems to a microSD card"
  homepage "https://www.raspberrypi.com/software/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Raspberry Pi Imager.app"

  zap trash: [
    "~/Library/Caches/Raspberry Pi",
    "~/Library/Preferences/com.raspberrypi.Raspberry Pi Imager.plist",
    "~/Library/Saved Application State/com.raspberrypi.imagingutility.savedState",
  ]
end
