cask "popclip" do
  version "2024.12"
  sha256 "22b223f1a6b3a3f63883e71af5e607e7ab4d80833d19d1bb9e0c049049863953"

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
