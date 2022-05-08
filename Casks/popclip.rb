cask "popclip" do
  version "2022.5,3895"
  sha256 "a313b75d8a918174644dd5f7a979198026fa6f693124e7b41e0a7e37d3c3ad86"

  url "https://pilotmoon.com/downloads/PopClip-#{version.csv.first}.zip"
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
