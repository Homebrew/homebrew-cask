cask :v1 => 'bibdesk' do
  version '1.6.3'
  sha256 '30dcf97dbf1256fbc49e98ff67b7e510ea8b90bcefb4f919d0b2ac8aa8f695a8'

  url "https://downloads.sourceforge.net/project/bibdesk/BibDesk/BibDesk-#{version}/BibDesk-#{version}.dmg"
  appcast 'http://bibdesk.sourceforge.net/bibdesk.xml',
          :sha256 => '1e2b0f0c5e7de9f352ffa2f5b894ec5c4c3c0bb22c4a2018fa5b054df1ebfaa5'
  homepage 'http://bibdesk.sourceforge.net/'
  license :oss

  app 'BibDesk.app'
  zap :delete => [
                  '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                  '~/Library/Application Support/BibDesk',
                 ]
end
