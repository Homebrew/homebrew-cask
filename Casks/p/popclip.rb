cask "popclip" do
  version "2024.5"
  sha256 "426fe69bddc8a107d8a44d89bc319987ccc10ecbfcb579c8c50100505c31595c"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip",
      verified: "pilotmoon.com/"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://www.popclip.app/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Application Support/PopClip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PopClip",
  ]
end
