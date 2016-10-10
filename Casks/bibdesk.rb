cask 'bibdesk' do
  version '1.6.7'
  sha256 'f9ba3a663f907d03326bcfa1741827ae4b639459020b5f3da14b5b17eb6562d6'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: '618bbe4ed7f37c05ec1e67fc4fc14b1feef2e63d8ba8ca7c6440715b662f59ff'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
