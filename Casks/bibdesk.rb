cask 'bibdesk' do
  version '1.6.10'
  sha256 '45044432df719fa543ef446326a2bd2ce2a09071656107470523b9babc5bc95e'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: '037b7bec2d25572d9b982307a23e34cc6a6357209a73f572ffc27b2515f5cf4e'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
