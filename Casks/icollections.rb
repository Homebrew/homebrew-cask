cask "icollections" do
  version "6.5.4,65410"
  sha256 "94dd972b000f3fbd1d6f423905d97158890a2e85fcef7ab62683e056f6792c02"

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
