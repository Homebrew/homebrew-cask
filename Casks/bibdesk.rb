cask :v1 => 'bibdesk' do
  version '1.6.4'
  sha256 '2b32b0a92a74fca13405b1354d840854ea6674f357bf6e9e99d99fb31471134c'

  url "http://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  name 'BibDesk'
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          :sha256 => '1e2b0f0c5e7de9f352ffa2f5b894ec5c4c3c0bb22c4a2018fa5b054df1ebfaa5'
  homepage 'http://bibdesk.sourceforge.net/'
  license :bsd

  app 'BibDesk.app'

  zap :delete => [
                  '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                  '~/Library/Application Support/BibDesk',
                 ]
end
