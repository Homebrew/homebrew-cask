cask "icollections" do
  version "6.5.3,65311"
  sha256 "e55ff41639330bb452fc9776ab9a96b51240df2a42facb0229c6b264a06acd0a"

  url "https://naarakstudio.com/download/iCollections.dmg"
  appcast "https://naarakstudio.com/download/icollections/update.ver",
          must_contain: version.after_comma
  name "iCollections"
  homepage "https://naarakstudio.com/icollections/"

  depends_on macos: ">= :sierra"

  app "iCollections.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.naarak.collections.sfl2",
    "~/Library/Application Support/com.naarak.Collections",
    "~/Library/Preferences/com.naarak.Collections.plist",
  ]
end
