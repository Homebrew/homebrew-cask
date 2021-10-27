cask "bibdesk" do
  version "1.8.6,5732"
  sha256 "651c9fae5e652f0dbf8cddfbd5b0ba5be62bf92c126e47c33620453967be1de2"

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version.before_comma}/BibDesk-#{version.before_comma}.dmg",
      verified: "downloads.sourceforge.net/bibdesk/"
  name "BibDesk"
  desc "Edit and manage bibliographies"
  homepage "https://bibdesk.sourceforge.io/"

  livecheck do
    url "https://bibdesk.sourceforge.io/bibdesk.xml"
    strategy :sparkle
  end

  auto_updates true

  app "BibDesk.app"

  zap trash: [
    "~/Library/Application Support/BibDesk",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*",
    "~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk",
    "~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies",
    "~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist",
  ]
end
