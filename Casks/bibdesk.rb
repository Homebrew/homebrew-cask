cask 'bibdesk' do
  version '1.7.2'
  sha256 '49377d54f7c6036a88c8c7664f9263f116532f1c8ed8ddc4d1ca4e8f04f93b6c'

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
