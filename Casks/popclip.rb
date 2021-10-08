cask "popclip" do
  version "2021.10,3543"
  sha256 "f951500c8b952c2d37655471aed6c84c476ec8100bbb78bd09e6b14c5356e409"

  url "https://pilotmoon.com/downloads/PopClip-#{version.before_comma}.zip"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/PopClip",
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
  ]
end
