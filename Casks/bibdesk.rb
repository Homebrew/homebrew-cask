cask :v1 => 'bibdesk' do
  version '1.6.5'
  sha256 '88bba68bac01d2702404f1a245485c61cd4b97af0314cb138f6fae8aa3ca1457'

  url "http://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  name 'BibDesk'
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          :sha256 => 'fb2760ab25b24f3d8caaf8af62b1141bdaf121805e1a01ab06f96af595d814a9'
  homepage 'http://bibdesk.sourceforge.net/'
  license :bsd

  app 'BibDesk.app'

  zap :delete => [
                  '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                  '~/Library/Application Support/BibDesk',
                 ]
end
