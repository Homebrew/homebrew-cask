cask "raspberry-pi-imager" do
  version "1.9.6"
  sha256 "951e0443cddf3553219d53408ac4ec2d205911c9dfed5e5496862a0fd3296a2f"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/rpi-imager-#{version}.dmg",
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
