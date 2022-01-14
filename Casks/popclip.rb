cask "popclip" do
  version "2021.11.1,3788"
  sha256 "0987f69055141f9c116f76b20eb0ed8086eebd0cf748460bae6df6d4565776fd"

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
