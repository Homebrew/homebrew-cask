cask "popclip" do
  version "2023.7"
  sha256 "be7953591ae1c5aa36204d95d26c651830e495fd7f1e191058735f2340ee01ca"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Application Support/PopClip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
  ]
end
