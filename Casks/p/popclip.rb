cask "popclip" do
  version "2024.5.2"
  sha256 "7dffdff233d684903589531b3e424088cac22816da3470f4b941383f46d5d2cc"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip",
      verified: "pilotmoon.com/downloads/"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://www.popclip.app/"

  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
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
