cask 'bibdesk' do
  version '1.6.5'
  sha256 '88bba68bac01d2702404f1a245485c61cd4b97af0314cb138f6fae8aa3ca1457'

  url "http://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          :sha256 => 'f94dd4180183fe11ad6c61590dcef96dba9d6b928560e57f2d2c00bc926fd934'
  name 'BibDesk'
  homepage 'http://bibdesk.sourceforge.net/'
  license :bsd

  app 'BibDesk.app'

  zap :delete => [
                   '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                   '~/Library/Application Support/BibDesk',
                 ]
end
