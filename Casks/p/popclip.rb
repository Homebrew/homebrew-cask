cask "popclip" do
  version "2024.3"
  sha256 "29d4111c97a5e6c5e43047fbb1b0f1aaefaf6c715f81463c8213935213e81659"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

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
