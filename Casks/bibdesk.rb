cask 'bibdesk' do
  version '1.6.12'
  sha256 '285f1dbcaa26bbe03084ab1f1dd958be60824aafca199d9ab7b45c0bb3fe2e87'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: 'dd578a684137549fd2198d6e40d5a044687a2cc7efc5738620627b6a6135a4a1'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*',
                '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
                '~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/BibDesk',
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
              ]
end
