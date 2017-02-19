cask 'bibdesk' do
  version '1.6.9'
  sha256 '1363517ece4b6aa2e8147e194504957685562a26c83b5ec7e6d3e5aa54ca1050'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: '2c1338fbf02f93cead3c1228b43efdf0354d7a60b81e002b4d76988f07c44acf'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
