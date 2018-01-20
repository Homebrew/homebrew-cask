cask 'bibdesk' do
  version '1.6.13'
  sha256 'b544c04589410f10dc0f0e536b477b4a71cd8191dba3dd5a39a1b97e29c36246'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: 'cad07e8830709b79092fe69c3488bfa842a5ba17c63dc08e4492d3cf4066e01b'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  auto_updates true

  app 'BibDesk.app'

  zap trash: [
               '~/Library/Application Support/BibDesk',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*',
               '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
               '~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies',
               '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
             ]
end
