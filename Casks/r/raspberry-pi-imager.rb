cask "raspberry-pi-imager" do
  version "2.0.11"
  sha256 "7af0c2c3038c69d1bbc565daf4bfb8830bbf8413a1634ac31b89f90700a7add7"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/rpi-imager-v#{version}.dmg",
      verified: "github.com/raspberrypi/rpi-imager/"
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
