cask "raspberry-pi-imager" do
  version "2.0.0"
  sha256 "5c6ce78c0aba09aad1284f7990b11d8059140788f4c0f5a3ccbe1b3d9163e6d0"

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
