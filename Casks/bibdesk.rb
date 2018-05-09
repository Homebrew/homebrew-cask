cask 'bibdesk' do
  version '1.6.15'
  sha256 '9764bc8faaa2b513f952b4c07ea6a2300d70f4e1c78851a51d0637a17da2642e'

  # downloads.sourceforge.net/bibdesk was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'https://bibdesk.sourceforge.io/bibdesk.xml',
          checkpoint: 'b2a183ef4fbd1c6615b5072c0fddb8cef48ed1366625aacf2f45f1c9cc999727'
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
