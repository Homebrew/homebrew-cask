cask "bibdesk" do
  version "1.9.14"
  sha256 "4914bf0b282fbb492e414a49c87611270d60b21907237b314b458bb84657353f"

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version.csv.first}/BibDesk-#{version.csv.first}.dmg"
  name "BibDesk"
  desc "Edit and manage bibliographies"
  homepage "https://bibdesk.sourceforge.io/"

  livecheck do
    url "https://bibdesk.sourceforge.io/bibdesk.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "BibDesk.app"

  zap trash: [
    "~/Library/Application Support/BibDesk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ucsd.cs.mmccrack.bibdesk.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*",
    "~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk",
    "~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies",
    "~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist",
  ]
end
