cask 'bibdesk' do
  version '1.6.8'
  sha256 'd59504a02a2192e7cd0d226a84bab1747da8404534dc459ee155421b0c0cacff'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: '35e43f002c6725809b3bfd6d413563fae2be6783265870ac12406c420b29114b'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
