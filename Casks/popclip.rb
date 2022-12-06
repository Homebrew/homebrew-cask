cask "popclip" do
  version "2022.12,4069"
  sha256 "91264a56675fb41ba13e07bd5cb6cab01ac64cdc551a19582914dbe3aa2bf63a"

  url "https://pilotmoon.com/downloads/PopClip-#{version.csv.first}.zip"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/PopClip",
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
  ]
end
