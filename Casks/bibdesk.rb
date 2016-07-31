cask 'bibdesk' do
  version '1.6.6'
  sha256 '40bdefb6a16f41952fbda990549f19eb0622f3c276055212341f616df48885da'

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
