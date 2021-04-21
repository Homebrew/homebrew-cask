cask "popclip" do
  version "2020.12,3117"
  sha256 "1f186088aa42d8659d9608e042c551d59764440193dc77c04ae8f5df32a53ac9"

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
