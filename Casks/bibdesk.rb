cask "bibdesk" do
  version "1.8.13,6004"
  sha256 "a9f1bed9a172997dab20cd8f5858e58d5763fedacf1ed3df7ce2e8505a56039d"

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version.csv.first}/BibDesk-#{version.csv.first}.dmg",
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
