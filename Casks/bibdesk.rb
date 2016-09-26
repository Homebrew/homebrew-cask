cask 'bibdesk' do
  version '1.6.7'
  sha256 'f9ba3a663f907d03326bcfa1741827ae4b639459020b5f3da14b5b17eb6562d6'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: 'a1191d16ecb3c1958a0b9c47ac6862d88841644a949f0c95a18622144c796565'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'
  license :bsd

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
