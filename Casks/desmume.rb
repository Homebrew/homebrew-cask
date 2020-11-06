cask "desmume" do
  version "0.9.11"
  sha256 "c3ff7024e0905f1c1da390d0fa793a3dc42d026ceded333958f3b79243a11db1"

  url "https://downloads.sourceforge.net/desmume/desmume-#{version}-mac.dmg"
  appcast "https://sourceforge.net/projects/desmume/rss"
  name "DeSmuME"
  homepage "https://sourceforge.net/projects/desmume/"

  app "DeSmuME.app"

  zap trash: [
    "~/Library/Application Support/DeSmuME",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.desmume.desmume.sfl*",
    "~/Library/Saved Application State/org.desmume.DeSmuME.savedState",
    "~/Library/Preferences/org.desmume.DeSmuME.plist",
  ]
end
