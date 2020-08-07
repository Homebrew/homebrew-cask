cask "icollections" do
  version "6.5.3,65304"
  sha256 "c5ffb2778c86b0125fa25165a960579594e63047e43371e08f3ac04c03ccbf74"

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
