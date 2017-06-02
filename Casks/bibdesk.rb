cask 'bibdesk' do
  version '1.6.11'
  sha256 '3c059f850867834ba3819a758df732f3087b5f534dc52dae9414a83e938bd754'

  url "https://downloads.sourceforge.net/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          checkpoint: '6c99cd07acc67b47f8c3900da290497ce8486c2a57d0529b8d3b749f421bfc23'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'

  app 'BibDesk.app'

  zap delete: [
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Application Support/BibDesk',
              ]
end
