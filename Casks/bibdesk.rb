cask 'bibdesk' do
  version '1.6.21'
  sha256 '336ec88857559092d8a93c4ac714ceeb2284d6f1a534ab85ed442b50022dbb55'

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
