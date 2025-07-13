cask "raspberry-pi-imager" do
  version "1.9.5"
  sha256 "0164576f0803cbd48f00757c8496ab81a204dfc6151fad0b8b286232633c4b9b"

  url "https://github.com/raspberrypi/rpi-imager/releases/download/v#{version}/rpi-imager-#{version}.dmg",
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
