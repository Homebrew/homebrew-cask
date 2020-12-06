cask "icollections" do
  version "6.7.2,67212"
  sha256 "11b7635b3365a2ae35b6c7c3809febab5e81ac2a021d9e3c14318c4f6019e77e"

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
