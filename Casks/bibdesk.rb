cask "bibdesk" do
  version "1.7.8"
  sha256 "a0027927194b83e6f32d65d43ae5ed4b2f674b486ba962c679d4fd55ce9cac9b"

  # downloads.sourceforge.net/bibdesk/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast "https://bibdesk.sourceforge.io/bibdesk.xml"
  name "BibDesk"
  desc "Edit and manage bibliographies"
  homepage "https://bibdesk.sourceforge.io/"

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
