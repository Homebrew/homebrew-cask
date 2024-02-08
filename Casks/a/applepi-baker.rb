cask "applepi-baker" do
  version "2.2.3"
  sha256 "5b6c89392a2bae26ad235d647bba7f857e82a34f2e9a4d8d6e33cf4396d94775"

  url "https://www.tweaking4all.com/downloads/raspberrypi/ApplePi-Baker-v#{version}.dmg"
  name "ApplePi-Baker"
  desc "Backup and restore SD cards, USB drives, external HDD, etc"
  homepage "https://www.tweaking4all.com/hardware/raspberry-pi/applepi-baker-v2/"

  livecheck do
    url :homepage
    regex(/href=.*?ApplePi-Baker[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ApplePiBaker.app"

  zap trash: [
    "~/Library/Caches/com.Tweaking4All.PiBaker",
    "~/Library/Preferences/ApplePi-Baker",
    "~/Library/Preferences/com.Tweaking4All.PiBaker.plist",
    "~/Library/Saved Application State/com.tweaking4all.ApplePiBaker.savedState",
    "~/Library/WebKit/com.Tweaking4All.PiBaker",
  ]
end
