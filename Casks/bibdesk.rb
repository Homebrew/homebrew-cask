cask "bibdesk" do
  version "1.8.18"
  sha256 "38102b0fc37ec66f648da3168d1115b1e22baef1e117054b5c3d76150d6fd6dd"

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
