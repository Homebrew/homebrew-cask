cask 'bibdesk' do
  version '1.7.3'
  sha256 'd5b493f0ec6b5c0262125d7a9b487530b138478f6bd24f979d5dbb513db76dbf'

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
