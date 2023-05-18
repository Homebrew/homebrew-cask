cask "bibdesk" do
  version "1.8.17"
  sha256 "39c97b13ce13ed1778ccaa3d4569cd14e9521081f8d32bc4d081309e880dca9e"

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version.csv.first}/BibDesk-#{version.csv.first}.dmg",
      verified: "downloads.sourceforge.net/bibdesk/"
  name "BibDesk"
  desc "Edit and manage bibliographies"
  homepage "https://bibdesk.sourceforge.io/"

  livecheck do
    url "https://bibdesk.sourceforge.io/bibdesk.xml"
    strategy :sparkle, &:short_version
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
