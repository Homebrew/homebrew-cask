cask :v1 => 'bibdesk' do
  version '1.6.4'
  sha256 '2b32b0a92a74fca13405b1354d840854ea6674f357bf6e9e99d99fb31471134c'

  url "http://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  name 'BibDesk'
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          :sha256 => '794c84ee3ef4f695a22ce2801d12cc6457a3705fc97fc7d64c14adb5eaa31b8b'
  homepage 'http://bibdesk.sourceforge.net/'
  license :bsd

  app 'BibDesk.app'

  zap :delete => [
                  '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                  '~/Library/Application Support/BibDesk',
                 ]
end
