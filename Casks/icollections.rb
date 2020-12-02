cask "icollections" do
  version "6.7.2,67201"
  sha256 "0817e68a6599fbf65344eafdd5693233aa9f645f7e0b0cf4a58dcc454b7c1695"

  url "https://naarakstudio.com/download/iCollections.dmg"
  appcast "https://naarakstudio.com/download/icollections/update.ver",
          must_contain: version.after_comma
  name "iCollections"
  desc "App to help keep the desktop organized"
  homepage "https://naarakstudio.com/icollections/"

  depends_on macos: ">= :sierra"

  app "iCollections.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.naarak.collections.sfl2",
    "~/Library/Application Support/com.naarak.Collections",
    "~/Library/Preferences/com.naarak.Collections.plist",
  ]
end
