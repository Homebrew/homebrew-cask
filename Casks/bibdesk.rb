cask 'bibdesk' do
  version '1.6.17'
  sha256 'b6196c56fe977403d94c2e6a05b5b93e7973ebd907f5e49cf717700fe4ebb1c4'

  # downloads.sourceforge.net/bibdesk was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'https://bibdesk.sourceforge.io/bibdesk.xml'
  name 'BibDesk'
  homepage 'https://bibdesk.sourceforge.io/'

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
